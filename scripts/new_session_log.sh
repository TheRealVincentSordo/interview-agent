#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./scripts/new_session_log.sh [--dry-run] [mode] [pattern] [difficulty] [problem]

Examples:
  ./scripts/new_session_log.sh curriculum arrays_strings easy "Best Time to Buy and Sell Stock"
  ./scripts/new_session_log.sh practice sliding_window medium "Longest Substring Without Repeating Characters"
  ./scripts/new_session_log.sh --dry-run practice hash_maps easy "Two Sum"

Defaults:
  mode=practice
  pattern=tbd
  difficulty=tbd
  problem=untitled-session
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

dry_run=false

if [[ "${1:-}" == "--dry-run" ]]; then
  dry_run=true
  shift
fi

mode="${1:-practice}"
pattern="${2:-tbd}"
difficulty="${3:-tbd}"
problem="${4:-untitled-session}"

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

mkdir -p sessions

file_path="sessions/${timestamp}-${mode_slug}-${problem_slug}.md"

if [[ "$dry_run" == true ]]; then
  printf 'Would create %s\n' "$file_path"
  exit 0
fi

cat > "$file_path" <<EOF
# Session Log

## Session
- Date: ${session_date}
- Mode: ${mode}
- Pattern: ${pattern}
- Difficulty: ${difficulty}
- Problem: ${problem}

## Why This Pattern
- Recognition signals:
- Why it matters in real systems:

## Problem Restatement
- Goal:
- Inputs and outputs:
- Constraints:

## Brute-Force
- Approach:
- Why it works:
- Time complexity:
- Space complexity:

## Optimized Solution
- Pattern used:
- Key idea:
- Time complexity:
- Space complexity:
- Why it is better:

## Python Implementation
- Plan:
- Final code notes:

## Tests
- Happy path:
- Edge case 1:
- Edge case 2:

## Review
- Correctness:
- Clarity:
- Tradeoffs:
- Communication quality:

## Memory Log
- Key mistake:
- Key insight:
- Python-specific lesson:
- Confidence:
- Next drill 1:
- Next drill 2:
EOF

printf 'Created %s\n' "$file_path"
