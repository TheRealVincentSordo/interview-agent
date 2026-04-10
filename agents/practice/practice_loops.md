# Practice Loops

## Deliberate Practice
Deliberate practice is not just doing more problems. It is repeating a small number of high-value behaviors on purpose:
- recall the pattern,
- attempt before looking things up,
- reason from brute force to optimization,
- write readable Python,
- test edge cases,
- review mistakes,
- and log what should change next time.

The goal is steady skill-building, not random problem volume.

## Daily 60-Minute Loop
Use this when time is tight and consistency matters more than breadth.

### 1. Pattern Recall - 5 minutes
- name the target pattern,
- list 2 to 3 recognition signals,
- and recall the core data structures often used with it.

### 2. Problem Attempt - 10 minutes
- read the problem carefully,
- restate it in your own words,
- and identify the inputs, outputs, and constraints.

### 3. Brute-Force Reasoning - 10 minutes
- describe the simplest correct approach,
- explain why it works,
- and estimate time and space complexity.

### 4. Optimized Solution - 10 minutes
- ask what makes brute force too slow or too awkward,
- identify the pattern that improves it,
- and explain the optimization before coding.

### 5. Coding In Python - 15 minutes
- implement the chosen approach in readable Python,
- use standard library tools only when they make the code clearer,
- and avoid clever compression.

### 6. Testing - 5 minutes
- run through 2 to 4 small tests,
- include one edge case,
- and check the expected output before changing code.

### 7. Review - 3 minutes
- note one thing that worked,
- one mistake,
- and one thing to tighten next rep.

### 8. Memory Logging - 2 minutes
- record the pattern,
- key mistake,
- key insight,
- and next two drills.

## Daily 90-Minute Loop
Use this when you want more depth, stronger review, and more deliberate reflection.

### 1. Pattern Recall - 10 minutes
- recall the pattern family,
- typical recognition signals,
- common failure modes,
- and one real-world engineering mapping.

### 2. Problem Attempt - 15 minutes
- read and restate the problem,
- identify constraints,
- and choose an initial direction without coding yet.

### 3. Brute-Force Reasoning - 15 minutes
- explain the baseline approach,
- walk through a small example,
- and state why the baseline will or will not scale.

### 4. Optimized Solution - 15 minutes
- derive the better approach,
- identify the exact data structure or invariant,
- and compare complexity against brute force.

### 5. Coding In Python - 20 minutes
- write the implementation cleanly,
- favor readable names and simple control flow,
- and keep the solution explainable aloud.

### 6. Testing - 5 minutes
- test the happy path,
- one tricky case,
- one boundary case,
- and one case that stresses the chosen invariant.

### 7. Review - 5 minutes
- review correctness,
- complexity,
- readability,
- and missed edge cases.

### 8. Memory Logging - 5 minutes
- log the session in the memory format,
- assign the confidence score,
- and choose the next two drills.

## Weekly Review Loop
Use this once per week to consolidate learning instead of just pushing forward.

### 1. Pattern Recall
- review the patterns practiced that week,
- and name which ones felt immediate versus delayed.

### 2. Problem Attempt Audit
- count how many problems were solved independently,
- with hints,
- or only after review.

### 3. Brute-Force Review
- check whether you consistently articulated a baseline first,
- and note where you optimized too early.

### 4. Optimized Reasoning Review
- identify which optimizations now feel intuitive,
- and which still feel memorized.

### 5. Python Review
- inspect whether your code stayed readable under time pressure,
- and note any repeated Python-specific friction.

### 6. Testing Review
- list the edge cases you most often missed,
- and identify whether the gap was reasoning or carelessness.

### 7. Review Summary
- write 3 short bullets:
- strongest pattern this week,
- weakest pattern this week,
- highest-value mistake to fix next week.

### 8. Memory Logging
- update the session logs,
- look for recurring mistake patterns,
- and set the next week’s focus accordingly.

## Stuck Protocol
Do not immediately look up the answer.

Escalate through this sequence:
1. restatement:
   rewrite the problem in simpler words and isolate the exact goal.
2. small examples:
   work through 2 to 3 tiny inputs by hand and watch what changes.
3. brute force:
   find the simplest correct method, even if it is slow.
4. data structure choice:
   ask what state needs to be tracked and what Python structure fits it.
5. hint ladder:
   use progressive hints instead of a full solution.
6. only then full review:
   study the complete solution only after the earlier steps fail.

The point is to preserve reasoning reps. Looking up the answer too early steals the part that builds skill.

## Post-Solution Reflection Checklist
After each problem, answer:
- what was the pattern?
- what made it recognizable?
- what was the brute-force baseline?
- what unlocked the optimization?
- what Python features helped?
- what edge case was easy to miss?
- what real-world system resembles this?

Keep the answers short. The goal is extraction, not essay writing.

## When To Move On
Move on when:
- you can explain the pattern clearly,
- you can justify brute force and optimization,
- your Python solution is readable,
- you tested key edge cases,
- and you can state one reusable lesson from the problem.

Do not wait for perfect speed before moving on.

## When To Revisit
Revisit a pattern when:
- you needed heavy hints,
- you could copy the solution but not derive it,
- you missed the same edge case twice,
- your complexity explanation was shaky,
- or the code worked but you could not explain why the invariant held.

When revisiting, choose a nearby problem variant rather than repeating the exact same prompt immediately.
