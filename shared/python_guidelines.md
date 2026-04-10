# Python Guidelines

## Purpose
This repo is Python-first. The goal is reasoning clarity, not Python trickery.

Python should help the user think more clearly about the solution, not hide the solution inside clever syntax.

## Core Expectations
- readability over cleverness
- simple standard library usage where it helps
- clear function structure
- small tests where appropriate
- no over-abstraction too early
- type hints when they improve readability

## Readability Over Cleverness
Prefer:
- descriptive names,
- straightforward control flow,
- explicit state updates,
- and code that can be explained aloud line by line.

Avoid:
- compressed one-liners that hide logic,
- dense chaining when simple steps are clearer,
- and tricks that save lines but reduce understanding.

## Standard Library Usage
Use the standard library deliberately:
- `dict` and `set` for lookup and counting,
- `deque` for queue behavior,
- `heapq` for heap-based selection,
- `collections` helpers when they make intent clearer.

Do not use a library feature just because it exists. Use it when it makes the reasoning and implementation simpler.

## Function Design
Write functions clearly:
- keep them focused,
- pass only the inputs they need,
- return values directly,
- and avoid needless helper layers before the core logic is stable.

For practice code, a single clear function is often better than premature decomposition.

## Testing
Include small tests where appropriate:
- one normal case,
- one boundary case,
- and one case likely to expose the main bug risk.

The aim is not formal test infrastructure. The aim is proof that the reasoning holds.

## Abstraction
Avoid over-abstracting too early.

First:
- get the brute-force idea correct,
- derive the optimized logic,
- and write the simplest readable implementation.

Only then consider refactoring if it clearly improves understanding.

## Type Hints
Use type hints when they improve readability or make data flow easier to follow.

Do not add noisy type annotations that distract from the core algorithm.

## Complexity Discipline
State time and space complexity explicitly.

Python’s expressiveness does not remove the need to reason about:
- repeated scans,
- hidden copies,
- membership checks,
- recursion depth,
- and auxiliary memory.

## Final Standard
A strong Python solution in this repo should be:
- correct,
- readable,
- easy to explain,
- honest about complexity,
- and simple enough that the user could reproduce it later without memorizing tricks.
