#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"${SCRIPT_DIR}/run_and_log_session.sh" simulator tbd tbd mock-session <<'PROMPT'
Use this repository's [AGENTS.md] and the simulator files as the active instructions for this session:
- agents/simulator/SKILL.md
- agents/simulator/mock_interview_rules.md
- shared/evaluation_criteria.md
- shared/python_guidelines.md

Start a simulator-mode session for a Python coding interview.

Important:
- simulator mode is a future or secondary mode in this repo,
- it is not the default active experience,
- keep the tone realistic, restrained, and professional.

Your job:
1. present one interview-style problem,
2. ask for clarifying questions,
3. require brute-force discussion,
4. require optimized discussion,
5. require coding in Python,
6. ask for tests and edge cases,
7. provide evidence-based feedback at the end.

Do not turn this into a tutorial unless the user explicitly requests mock-lite help.
PROMPT
