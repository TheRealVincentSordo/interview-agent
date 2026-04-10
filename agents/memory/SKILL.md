# Skill: Memory Agent

## When to Use It
Use this skill after a meaningful coding practice session when the goal is to preserve durable learning artifacts that will improve future coaching.

Use it to record:
- pattern recognition progress,
- recurring mistakes,
- useful insights,
- Python-specific implementation lessons,
- confidence signals,
- and the next drills that should follow.

Use this after practice, review, or reflection. Prefer logging when the session revealed something reusable, not just when a problem was completed.

## Purpose
The Memory Agent captures a concise, durable record of how the user is learning.

Its job is to help build a personal map of:
- patterns the user has practiced,
- mistakes they tend to repeat,
- insights that improved performance,
- and what to practice next.

Logs should be short, structured, and directly useful for later sessions.

## What Should Be Logged After a Session
Each practice session log should capture:
- date,
- pattern,
- problem name,
- difficulty,
- brute-force idea,
- optimized idea,
- final complexity,
- key mistake,
- key insight,
- edge cases missed,
- Python-specific lesson,
- confidence score out of 5,
- next 2 suggested drills.

Also log only the minimum context needed to make future coaching better.

## What Should Not Be Logged
Do not log:
- unnecessary personal information,
- long transcripts of the session,
- raw step-by-step chat history,
- vague praise without a concrete learning signal,
- redundant notes that repeat prior logs without adding anything new,
- speculative judgments about ability without evidence,
- or implementation detail that will not matter in future practice.

Do not turn the memory log into a diary. It is a compact engineering learning record.

## Logging Principles
- keep entries lean,
- prefer concrete observations over broad impressions,
- log the first important mistake, not every minor stumble,
- write insights in a reusable way,
- and make next drills specific enough to assign immediately.

## Standard Log Schema In Markdown
Use this structure for every stored practice log:

## Session Log
- Date:
- Pattern:
- Problem Name:
- Difficulty:
- Brute-Force Idea:
- Optimized Idea:
- Final Complexity:
- Key Mistake:
- Key Insight:
- Edge Cases Missed:
- Python-Specific Lesson:
- Confidence:
- Next Drill 1:
- Next Drill 2:

Keep each field to one short entry unless a little more detail is necessary for reuse.

## Field Guidance
- Date: use the session date in `YYYY-MM-DD` format.
- Pattern: name the underlying pattern, not just the surface topic.
- Problem Name: use the specific problem title or a short working label.
- Difficulty: use a simple level such as easy, medium, or hard.
- Brute-Force Idea: summarize the first correct baseline approach in one or two lines.
- Optimized Idea: summarize the better approach and the pattern it relies on.
- Final Complexity: include final time and space complexity in plain language.
- Key Mistake: record the most important reasoning, implementation, or testing mistake.
- Key Insight: capture the reusable lesson that unlocked progress.
- Edge Cases Missed: note the boundary cases the user forgot or mishandled.
- Python-Specific Lesson: record one Python implementation takeaway worth reusing.
- Confidence: store a score out of 5 with a short rationale when helpful.
- Next Drill 1 and Next Drill 2: recommend two specific follow-up reps.

## How To Summarize Mistakes
Summarize mistakes as the smallest durable lesson, not a long narrative.

Good mistake summaries:
- describe the actual failure mode,
- identify where reasoning broke,
- and make the correction reusable.

Prefer:
- "optimized too early without validating brute force"
- "missed duplicate-handling invariant in sliding window"
- "used list membership checks where a set was needed"

Avoid:
- "got confused"
- "made a bug"
- "needs more practice"

## How To Record Confidence
Record confidence on a 1 to 5 scale:
- `1/5`: could not identify the pattern or make progress without heavy intervention,
- `2/5`: partial recognition, but needed substantial prompting,
- `3/5`: reached a workable solution with moderate guidance,
- `4/5`: solved mostly independently with minor corrections,
- `5/5`: solved cleanly, explained tradeoffs clearly, and handled edge cases confidently.

Confidence should reflect both implementation and explanation quality.

If useful, add a brief reason after the score, for example:
- `3/5 - recognized the pattern after constraint hints`
- `4/5 - implementation was solid, but edge cases were incomplete`

## How To Recommend Next Drills
Recommend exactly 2 drills for each session log unless there is a strong reason not to.

Each drill should:
- target the observed weakness,
- reinforce the same pattern or a neighboring one,
- be concrete enough to assign immediately,
- and avoid random variety for its own sake.

Good drill recommendations:
- one same-pattern repetition with a small variation,
- one adjacent-pattern problem that tests a related decision boundary.

Examples:
- "another sliding window problem with duplicate constraints"
- "a hash map counting problem with stricter edge-case handling"

## Update Rules
Create or update a log when:
- the user completed a problem,
- the user attempted a problem and revealed a durable mistake pattern,
- the review surfaced a reusable Python lesson,
- or the session produced a clear next-practice direction.

Skip logging when:
- the interaction was too shallow to produce a useful artifact,
- the note would duplicate an existing recent log without adding a new signal,
- or the session did not reveal anything reusable.

## Success Criteria
This skill is successful when future sessions can quickly answer:
- which patterns the user has practiced,
- what mistakes repeat,
- what insights have already clicked,
- how confident the user is by pattern,
- and what the next best drills should be.
