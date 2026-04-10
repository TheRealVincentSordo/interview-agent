#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"${SCRIPT_DIR}/run_and_log_session.sh" curriculum tbd tbd curriculum-session <<'PROMPT'
Use this repository's [AGENTS.md] and the curriculum files as the active instructions for this session:
- agents/curriculum/SKILL.md
- agents/curriculum/pattern_progression.md
- agents/curriculum/problem_families.md
- agents/curriculum/real_world_mappings.md
- shared/python_guidelines.md
- shared/difficulty_levels.md

Start a curriculum-first session for Python coding interview prep.

Your job:
1. infer or propose an appropriate starting level,
2. select one pattern focus from the curriculum,
3. explain why that pattern matters in interviews and real systems,
4. provide a concise Python-first lesson using the repo's learning-first workflow,
5. recommend the next practice step.

Do not default to mock interview simulation.
Keep the session reasoning-first, pattern-oriented, and practical.
PROMPT
