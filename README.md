# Interview Agent (Learning-First)

This repository powers a learning-first interview prep agent for software engineering interviews, with **Python as the default language**.

The project is intentionally structured around building durable problem-solving skill before interview simulation pressure.

## Repo Purpose

This project helps learners:

1. learn common coding problem patterns
2. connect those patterns to real-world engineering systems
3. practice solving problems deliberately
4. review outcomes and log lessons learned

## Current Focus

The active focus is **Phase 1: pattern learning**.

Today, that means:

- improving pattern recognition and problem decomposition
- practicing clear solution reasoning and clean implementation
- building reflection habits that improve retention

Mock interviews are present in the repository, but they are not the primary workflow yet.

## Why Python Is the Default Language

Python is the default for practical learning reasons:

- minimal syntax overhead keeps attention on algorithmic reasoning
- readable implementations improve review quality
- strong interview relevance across companies and platforms
- fast iteration supports deliberate practice loops

The long-term goal is transferable engineering thinking, not language lock-in.

## Agent Roles: Curriculum vs Practice vs Memory vs Simulator

The repository separates responsibilities into four agent roles:

- **Curriculum agent**: defines what to learn next (pattern families, progression, real-world mappings)
- **Practice agent**: runs solve-review-improve loops (prompting, hinting, assessment)
- **Memory agent**: records lessons learned (mistakes, heuristics, next-session targets)
- **Simulator agent**: introduces interview-like constraints and communication structure

In short:

- curriculum sets direction
- practice builds execution
- memory preserves learning
- simulator pressure-tests readiness

## Recommended Usage Flow

A recommended learner flow:

1. Start with curriculum to select one pattern family and an appropriate difficulty.
2. Run focused practice on a small number of problems in that family.
3. Review decisions and implementation quality using the practice rubric.
4. Log lessons learned so improvement carries into the next session.
5. Repeat with adjacent patterns, then gradually increase constraints.

Short, frequent sessions with explicit reflection are preferred over sporadic cramming.

## Long-Term Roadmap

### Phase 1: Pattern Learning (current)

Build first-principles understanding and reliable recognition of core coding patterns.

### Phase 2: Deliberate Practice

Increase repetition quality, improve consistency, and tighten feedback loops under moderate constraints.

### Phase 3: Interview Simulation

Shift to realistic interview pacing and communication once foundations are stable.

## Core Principle

Coding patterns are **compressed versions of production engineering instincts**.

Pattern mastery is not about memorizing tricks. It is about learning to identify structure, reason about tradeoffs, and implement reliably under constraints—the same instincts required in real engineering work.

## Getting Started

### 1) Clone the repository

```bash
git clone https://github.com/<your-org-or-user>/interview-agent.git
cd interview-agent
```

### 2) Install required dependencies

Current requirements are intentionally lightweight:

- Git
- Bash-compatible shell
- Python 3.10+ (recommended for Python-based problem solving)

There is currently no pinned Python dependency set to install for the core repository workflows.

### 3) Run supported scripts

From the repository root:

```bash
./scripts/start_curriculum.sh
./scripts/start_practice.sh
./scripts/start_mock.sh
```

These scripts are the supported entry points for curriculum, practice, and simulator modes.

By default, each start script now saves the assistant's session output to a timestamped Markdown file in `sessions/`.

To create a progress log for a session:

```bash
./scripts/new_session_log.sh practice sliding_window medium "Longest Substring Without Repeating Characters"
```

This creates a timestamped Markdown file in `sessions/` that matches the repository's learning and memory schema.

## How to Use with Codex CLI

In Codex CLI, a practical loop is:

1. run `./scripts/start_curriculum.sh` to choose a pattern focus
2. run `./scripts/start_practice.sh` for deliberate solve-review cycles
3. optionally run `./scripts/start_mock.sh` only after completing learning and review loops

You can also directly open one pattern file from `problem-bank/` and pair it with `agents/practice/review_rubric.md` for a focused manual session.

## Repo Map

Major folders:

- `agents/`
  - `agents/curriculum/`: progression and real-world mapping materials
  - `agents/practice/`: practice loops, hint ladder, and review rubric
  - `agents/memory/`: pattern log template and memory workflow guidance
  - `agents/simulator/`: mock interview behavior and rules
- `problem-bank/`: pattern-oriented problem references (e.g., sliding window, hash maps, dynamic programming)
- `shared/`: shared standards and templates (Python guidance, evaluation criteria, session templates)
- `scripts/`: CLI entry scripts for curriculum, practice, and simulator starts
  - `scripts/new_session_log.sh`: create a structured session log in `sessions/`

## Current Non-Goals

The following are explicitly not active focus areas yet:

- system design interview preparation
- behavioral interview preparation
- take-home assignment preparation

This repository currently prioritizes coding-pattern foundations.

## Design Philosophy

The project emphasizes:

- **clarity** over cleverness
- **incremental learning** over cram-and-forget cycles
- explicit **tradeoff reasoning** over template memorization
- **maintainability** of both code and thought process

If a practice tactic improves short-term speed but weakens reasoning quality, reasoning quality wins.
