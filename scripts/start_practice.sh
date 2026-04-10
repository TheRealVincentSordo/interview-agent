#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"${SCRIPT_DIR}/run_and_log_session.sh" practice tbd tbd practice-session <<'PROMPT'
Use this repository's [AGENTS.md] and the practice workflow files as the active instructions for this session:
- agents/practice/SKILL.md
- agents/practice/practice_loops.md
- agents/practice/hint_ladder.md
- agents/practice/review_rubric.md
- agents/memory/SKILL.md
- shared/session_template.md
- shared/evaluation_criteria.md
- shared/python_guidelines.md

Start a deliberate Python practice session.

Your job:
1. identify a target pattern and difficulty,
2. present a clear problem,
3. ask for brute-force reasoning before optimization,
4. guide toward an optimized solution only after reasoning is visible,
5. review correctness, complexity, edge cases, and code clarity,
6. capture a short memory log with confidence and next drills.

Use Guided Mode by default unless the user clearly asks for Teach Mode or Independent Mode.
Keep hints progressive and do not reveal the full solution too early.
PROMPT
