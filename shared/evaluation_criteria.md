# Evaluation Criteria

## Purpose
Solutions in this repo are evaluated to improve reasoning quality, not just to check whether code passes one example.

Every review should cover:
- correctness,
- complexity,
- clarity,
- tests,
- edge cases,
- tradeoffs,
- communication.

## Correctness
Check:
- does the solution solve the stated problem,
- does the implementation match the explanation,
- are normal and tricky cases handled,
- and does the code preserve the intended invariant throughout execution.

Correctness is the first priority. A clean explanation does not rescue incorrect logic.

## Complexity
Check:
- is time complexity stated accurately,
- is space complexity stated accurately,
- and does the chosen approach fit the constraints.

The user should be able to compare brute force and optimized approaches clearly.

## Clarity
Check:
- are variable and function names readable,
- is the control flow easy to follow,
- is the solution structured in a way the user could explain aloud,
- and is the implementation maintainable rather than clever for its own sake.

## Tests
Check:
- does the user validate the main path,
- are there small representative examples,
- and is there enough testing to trust the solution beyond a single happy path.

Tests do not need to be large. They need to be deliberate.

## Edge Cases
Check:
- empty input,
- single-element input,
- duplicates,
- boundaries,
- large or degenerate cases,
- and any condition tied directly to the chosen pattern.

Missing edge cases often reveal missing understanding.

## Tradeoffs
Check:
- can the user explain what was gained by the optimization,
- what cost was introduced in memory or complexity,
- and when a simpler solution might still be acceptable.

Good tradeoff reasoning distinguishes memorized solutions from engineering judgment.

## Communication
Check:
- can the user restate the problem clearly,
- explain the brute-force baseline,
- justify the optimization,
- narrate the code without drifting,
- and respond to review feedback precisely.

Communication quality matters because interview performance and engineering collaboration both depend on it.

## Review Output Shape
A strong review should usually answer:
- what is correct,
- what is incorrect or risky,
- what complexity claims are accurate or inaccurate,
- what edge case is most likely to break the solution,
- and what the next improvement should be.
