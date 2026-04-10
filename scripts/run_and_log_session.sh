#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

usage() {
  cat <<'EOF'
Usage:
  ./scripts/run_and_log_session.sh <mode> [pattern] [difficulty] [problem]

Reads the Codex prompt from stdin, saves session output to a timestamped file in
`sessions/`, and streams the same output to stdout.
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -lt 1 ]]; then
  usage >&2
  exit 1
fi

mode="$1"
pattern="${2:-tbd}"
difficulty="${3:-tbd}"
problem="${4:-${mode}-session}"

prompt="$(cat)"

if [[ -z "$prompt" ]]; then
  printf 'No prompt provided on stdin.\n' >&2
  exit 1
fi

timestamp="$(date +"%Y-%m-%d-%H%M")"
session_date="$(date +"%Y-%m-%d")"

slugify() {
  printf '%s' "$1" \
    | tr '[:upper:]' '[:lower:]' \
    | tr ' ' '-' \
    | tr -cd 'a-z0-9-_'
}

mode_slug="$(slugify "$mode")"
problem_slug="$(slugify "$problem")"

if [[ -z "$problem_slug" ]]; then
  problem_slug="session"
fi

mkdir -p "${REPO_ROOT}/sessions"

log_file="${REPO_ROOT}/sessions/${timestamp}-${mode_slug}-${problem_slug}.md"

cat > "$log_file" <<EOF
# Session Log

## Session
- Date: ${session_date}
- Mode: ${mode}
- Pattern: ${pattern}
- Difficulty: ${difficulty}
- Problem: ${problem}

## Session Output

EOF

printf 'Saving session output to %s\n' "$log_file" >&2

run_codex_session() {
  local -a codex_cmd=(
    codex
    exec
    --color
    never
    -c
    mcp_servers.claude-flow.enabled=false
    -C
    "$REPO_ROOT"
    "$prompt"
  )

  "${codex_cmd[@]}" </dev/null
}

if [[ -n "${SESSION_LOG_TEST_OUTPUT:-}" ]]; then
  printf '%s\n' "$SESSION_LOG_TEST_OUTPUT" | tee -a "$log_file"
else
  timeout_seconds="${CODEX_EXEC_TIMEOUT_SECONDS:-180}"
  timeout_enabled=false
  if [[ "$timeout_seconds" =~ ^[0-9]+$ ]] && (( timeout_seconds > 0 )); then
    timeout_enabled=true
  fi

  stream_fifo="$(mktemp -u "${TMPDIR:-/tmp}/codex-session-stream.XXXXXX")"
  timeout_flag="$(mktemp "${TMPDIR:-/tmp}/codex-session-timeout.XXXXXX")"
  mkfifo "$stream_fifo"

  tee -a "$log_file" < "$stream_fifo" &
  tee_pid=$!

  run_codex_session > "$stream_fifo" &
  codex_pid=$!
  codex_pgid="$(ps -o pgid= "$codex_pid" | tr -d ' ')"

  rm -f "$stream_fifo"

  watchdog_pid=""
  if [[ "$timeout_enabled" == true ]]; then
    (
      sleep "$timeout_seconds"
      if kill -0 "$codex_pid" 2>/dev/null; then
        printf '%s\n' "$timeout_seconds" > "$timeout_flag"
        if [[ -n "$codex_pgid" ]]; then
          kill -TERM "-$codex_pgid" 2>/dev/null || true
        fi
        kill "$codex_pid" 2>/dev/null || true
      fi
    ) &
    watchdog_pid=$!
  fi

  set +e
  wait "$codex_pid"
  codex_status=$?
  wait "$tee_pid"
  set -e

  if [[ -n "$watchdog_pid" ]]; then
    kill "$watchdog_pid" 2>/dev/null || true
  fi

  if [[ $codex_status -ne 0 ]]; then
    if [[ -s "$timeout_flag" ]]; then
      printf '\nCodex timed out after %s seconds.\n' "$timeout_seconds" >&2
      printf '\nSession failed: Codex timed out after %s seconds.\n' "$timeout_seconds" >> "$log_file"
    else
      printf '\nCodex exited with status %s.\n' "$codex_status" >&2
      printf '\nSession failed: Codex exited with status %s.\n' "$codex_status" >> "$log_file"
    fi

    exit "$codex_status"
  fi

  rm -f "$timeout_flag"
fi

printf '\nSaved session output to %s\n' "$log_file" >&2
