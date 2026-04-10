# Session Log

## Session
- Date: 2026-04-10
- Mode: curriculum
- Pattern: tbd
- Difficulty: tbd
- Problem: curriculum-session

## Session Output

## Pattern
- Name: Hash Maps and Sets
- Pattern family: Week 1 foundations on linear data
- Recognition signals:
  - repeated lookup or membership checks
  - counting, grouping, or deduplication
  - a brute-force solution would rescan earlier data
  - a `dict` or `set` can replace nested loops

Proposed starting level: early-intermediate, starting in Week 1.  
Reason: you asked for a curriculum-first session without prior performance data, and the repo guidance says to start one notch easier when level is unclear, then ramp quickly.

## Why This Pattern Matters
- Interview relevance: this is one of the fastest ways to turn `O(n^2)` repeated scanning into `O(n)` tracked-state reasoning. Interviewers use it to test whether you can recognize repeated work and eliminate it cleanly.
- Engineering relevance: this is the local algorithm version of indexing. It shows up in deduplication, session joins, lookup services, counters, caching, and inverted indexes.

## Teaching Dimensions
### 1) Pattern Definition
Use a `dict` or `set` when the main job is fast lookup, counting, grouping, or remembering what has already been seen.

### 2) Common Problem Shapes
- duplicate detection
- frequency counting
- grouping by normalized key
- pair lookup such as `two sum`
- first unique item

### 3) Representative Coding Problems
- Two Sum
- Contains Duplicate
- Group Anagrams
- First Unique Character

### 4) Brute-Force Intuition
Start by asking: “What repeated question am I asking?”  
For `two sum`, the repeated question is: “Have I already seen the number that would complete this pair?”

### 5) Optimized Pattern Intuition
Store useful facts as you scan:
- `set` when you only need membership
- `dict` when you need a value such as count, index, or grouped bucket

### 6) Python Implementation Style Notes
- prefer clear names like `seen`, `counts`, `index_by_value`
- update tracked state explicitly
- use `dict`/`set` because they make the reasoning visible
- avoid compressed one-liners that hide the state transition

### 7) Real-World Engineering Mapping
This pattern maps directly to:
- deduplicating events by id
- building a lookup index for user/session joins
- counting hot keys or request types
- maintaining a local cache to avoid repeated scans

### 8) Production-Scale Pressures
- Memory pressure: indexes speed reads but consume memory.
- Write amplification: every new event may require updating multiple indexes or counters.
- Hot keys: one heavily used key can create contention or skew.
- Freshness tradeoff: a fast lookup is only useful if the indexed state is current enough.

### 9) Interview Signals Tested
- can you spot repeated work quickly
- can you choose the right tracked state
- can you explain the time/space tradeoff honestly
- can you write the one-pass version readably

## Python Solution Path
Representative problem: `Two Sum`

Goal: given `nums` and `target`, return indices of two numbers that sum to `target`.

### Brute Force
- Approach: check every pair with nested loops.
- Time complexity: `O(n^2)`
- Space complexity: `O(1)`

```python
from typing import List

def two_sum_bruteforce(nums: List[int], target: int) -> List[int]:
    for i in range(len(nums)):
        for j in range(i + 1, len(nums)):
            if nums[i] + nums[j] == target:
                return [i, j]
    return []
```

### Optimized
- Approach: scan once, store each value’s index in a dictionary, and check whether the needed complement was seen earlier.
- Time complexity: `O(n)`
- Space complexity: `O(n)`
- Why this is better: it replaces repeated rescans with constant-time average lookup.

```python
from typing import List

def two_sum(nums: List[int], target: int) -> List[int]:
    index_by_value: dict[int, int] = {}

    for i, value in enumerate(nums):
        complement = target - value
        if complement in index_by_value:
            return [index_by_value[complement], i]
        index_by_value[value] = i

    return []
```

Quick tests:

```python
assert two_sum([2, 7, 11, 15], 9) == [0, 1]
assert two_sum([3, 2, 4], 6) == [1, 2]
assert two_sum([], 5) == []
```

## Review
- Correctness checklist:
  - handles empty input
  - does not reuse the same element twice
  - checks complement before storing current value
- Readability checklist:
  - clear variable names
  - one-pass control flow
  - explicit tracked state
- Tradeoff summary:
  - brute force uses less memory but rescans too much
  - hash-map indexing uses extra memory to remove repeated work
  - this is the right trade when lookups dominate

## Next Practice
- One concrete follow-up task: solve `Contains Duplicate` in Python, then explain in one sentence why `set` is enough there but `dict` is needed for `Two Sum`.

## Lesson Log
- Key takeaways:
  - hash-map problems usually hide repeated lookup work
  - ask what fact should be remembered while scanning
  - choose `set` for membership, `dict` for stored values
- Common mistakes to avoid:
  - storing the wrong thing under each key
  - updating state before checking complement
  - ignoring the memory cost of the index

If you want, the next step can be either:
1. a guided `Contains Duplicate` drill with hints, or
2. a slightly harder hash-map lesson on grouping and counting.
