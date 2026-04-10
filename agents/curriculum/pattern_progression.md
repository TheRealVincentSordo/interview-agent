# 4-Week Pattern Progression

## Purpose
This curriculum is a 4-week Python-based progression for coding interview prep focused on:
- pattern recognition,
- real-world engineering mappings,
- deliberate practice,
- readable implementation,
- and review that improves reasoning rather than memorization.

Structure:
- 4 weeks,
- 5 study days per week,
- Python-first throughout,
- week 4 emphasizes mixed review and synthesis rather than only new material.

## Week 1: Foundations On Linear Data

### Weekly Objective
Build fast recognition of the most common linear patterns:
- arrays and strings,
- hash maps,
- two pointers,
- sliding window.

### Why It Matters In Real Systems
These patterns show up constantly in:
- log parsing,
- deduplication,
- stream filtering,
- local caching,
- rate-limit windows,
- and basic indexing.

### Day 1
- Focus pattern: arrays and strings
- Learning goal: practice scanning, indexing, prefix thinking, and careful boundary handling
- Representative problem types: running sums, in-place edits, longest/shortest property over a sequence
- Real-world system mapping: log line parsing and basic event normalization
- Recommended practice mode: Teach Mode
- Expected output: brute-force and optimized Python solutions with 2 to 3 small tests

### Day 2
- Focus pattern: hash maps and sets
- Learning goal: recognize when counting, membership, grouping, or indexing removes repeated work
- Representative problem types: frequency counts, duplicate detection, grouping anagrams, lookup acceleration
- Real-world system mapping: entity deduplication, inverted indexes, hot-key counters
- Recommended practice mode: Guided Mode
- Expected output: Python solution plus a short note on when `dict` beats repeated scans

### Day 3
- Focus pattern: two pointers
- Learning goal: learn to exploit sorted order or paired movement to reduce nested loops
- Representative problem types: pair sums, palindrome checks, partitioning, merge-like scans
- Real-world system mapping: merging ordered streams and reconciling sorted records
- Recommended practice mode: Guided Mode
- Expected output: explanation of pointer movement and a readable Python implementation

### Day 4
- Focus pattern: sliding window
- Learning goal: understand window expansion and contraction with tracked state
- Representative problem types: longest substring, fixed-size window sums, at-most-k constraints
- Real-world system mapping: rate limiting, rolling metrics, anomaly detection windows
- Recommended practice mode: Guided Mode
- Expected output: brute-force baseline, optimized window logic, and explicit edge-case notes

### Day 5
- Focus pattern: week 1 mixed drill
- Learning goal: choose correctly among arrays, hash maps, two pointers, and sliding window
- Representative problem types: one problem from each of two different families with overlapping signals
- Real-world system mapping: choosing between one-pass scans, indexing, and rolling state in telemetry pipelines
- Recommended practice mode: Independent Mode
- Expected output: two short solutions, review notes, and a memory log entry

### End-Of-Week Checkpoint
- can you identify when repeated scans should become indexed lookups
- can you explain the difference between two pointers and sliding window
- can you write readable Python for these patterns without forcing clever tricks

## Week 2: Ordering, Selection, And Search

### Weekly Objective
Build comfort with problems where order, boundaries, and partial selection matter:
- intervals,
- heaps and top-k,
- binary search,
- stacks and queues.

### Why It Matters In Real Systems
These patterns drive:
- schedulers,
- ranking feeds,
- bounded-memory selection,
- work queues,
- and fast search over sorted state.

### Day 1
- Focus pattern: intervals
- Learning goal: recognize overlap, merge, and scheduling conflicts
- Representative problem types: merge intervals, insert interval, meeting rooms, overlap counts
- Real-world system mapping: booking windows, deployment windows, maintenance scheduling
- Recommended practice mode: Teach Mode
- Expected output: interval visualization, merge logic, and Python code with overlap tests

### Day 2
- Focus pattern: heaps and top-k
- Learning goal: understand when full sorting is unnecessary and a heap gives better control
- Representative problem types: k largest, closest points, streaming median variants, task prioritization
- Real-world system mapping: top search results, alert ranking, priority queues, bounded leaderboards
- Recommended practice mode: Guided Mode
- Expected output: heap-based Python solution and a note on why full sorting is wasteful

### Day 3
- Focus pattern: binary search
- Learning goal: separate searching values from searching answer spaces
- Representative problem types: first true boundary, search insert position, capacity threshold, feasibility checks
- Real-world system mapping: capacity tuning, timeout threshold search, index boundary lookups
- Recommended practice mode: Guided Mode
- Expected output: Python solution with clear invariant and boundary explanation

### Day 4
- Focus pattern: stacks and queues
- Learning goal: recognize LIFO/FIFO state and monotonic structure opportunities
- Representative problem types: valid parentheses, next greater element, BFS queue basics, processing order
- Real-world system mapping: job queues, parser stacks, breadth-first work expansion
- Recommended practice mode: Guided Mode
- Expected output: implementation plus explanation of why the chosen order matters

### Day 5
- Focus pattern: week 2 mixed drill
- Learning goal: compare search, ordering, and queue-driven reasoning
- Representative problem types: one scheduling-style problem and one ranking or boundary problem
- Real-world system mapping: selecting top items under load while respecting time windows and processing order
- Recommended practice mode: Independent Mode
- Expected output: two reviewed solutions and a short reflection on pattern confusion points

### End-Of-Week Checkpoint
- can you tell when a problem wants sorting, a heap, or a queue
- can you state binary search invariants without hand-waving
- can you handle interval boundary cases cleanly

## Week 3: Hierarchical And Search-Space Reasoning

### Weekly Objective
Move from linear patterns into structure-heavy reasoning:
- trees,
- graphs,
- traversal,
- recursion and backtracking.

### Why It Matters In Real Systems
These patterns map directly to:
- dependency graphs,
- hierarchical data,
- routing,
- permission inheritance,
- crawl expansion,
- and constrained search.

### Day 1
- Focus pattern: trees
- Learning goal: traverse hierarchical data with DFS and BFS while keeping state clear
- Representative problem types: depth, path sums, level order traversal, validation over nodes
- Real-world system mapping: org charts, file systems, configuration trees
- Recommended practice mode: Teach Mode
- Expected output: traversal comparison and Python solutions using recursion or `deque`

### Day 2
- Focus pattern: graphs
- Learning goal: recognize adjacency modeling, visited state, and connected-component reasoning
- Representative problem types: graph traversal, island counting, connectivity, shortest unweighted path
- Real-world system mapping: service dependency mapping, network reachability, fraud relationship graphs
- Recommended practice mode: Guided Mode
- Expected output: adjacency representation, traversal choice, and tested Python code

### Day 3
- Focus pattern: traversal strategy
- Learning goal: choose correctly between DFS, BFS, recursive traversal, and iterative traversal
- Representative problem types: shortest path in unweighted graphs, layered expansion, exhaustive exploration
- Real-world system mapping: crawl frontiers, dependency expansion, retry fan-out inspection
- Recommended practice mode: Guided Mode
- Expected output: explicit traversal choice with tradeoff explanation

### Day 4
- Focus pattern: recursion and backtracking
- Learning goal: model choice trees, state rollback, and pruning
- Representative problem types: subsets, permutations, combination sums, path construction
- Real-world system mapping: search-space exploration, configuration generation, constrained planning
- Recommended practice mode: Guided Mode
- Expected output: backtracking template, pruning explanation, and Python implementation

### Day 5
- Focus pattern: week 3 mixed drill
- Learning goal: separate hierarchical traversal from combinatorial search
- Representative problem types: one traversal problem and one backtracking problem
- Real-world system mapping: choosing between exploring existing structure and generating candidate states
- Recommended practice mode: Independent Mode
- Expected output: two solutions, one review pass, and updated confidence notes

### End-Of-Week Checkpoint
- can you model state clearly in recursive and iterative traversals
- can you explain when BFS beats DFS and when it does not
- can you keep visited state, path state, and rollback logic separate

## Week 4: Synthesis, DP Foundations, And Mock-Lite Review

### Weekly Objective
Introduce dynamic programming foundations while emphasizing mixed review, production mapping synthesis, and mock-lite evaluation.

### Why It Matters In Real Systems
This week ties together:
- repeated subproblem structure,
- offline versus online computation,
- production tradeoffs,
- and the judgment needed to choose among multiple familiar patterns.

### Day 1
- Focus pattern: dynamic programming foundations
- Learning goal: identify overlapping subproblems and decide between memoization and tabulation
- Representative problem types: climb stairs, house robber, grid path counting, simple sequence DP
- Real-world system mapping: precomputation, cached subresults, offline optimization passes
- Recommended practice mode: Teach Mode
- Expected output: brute-force recursion, memoized improvement, and final complexity comparison

### Day 2
- Focus pattern: mixed drill across weeks 1 and 2
- Learning goal: practice pattern selection when signals overlap
- Representative problem types: one problem where either hashing or windowing is tempting, and one involving ordering versus heaps
- Real-world system mapping: choosing between rolling state, indexing, and ranking under throughput constraints
- Recommended practice mode: Independent Mode
- Expected output: solved problems with explicit "why this pattern" notes

### Day 3
- Focus pattern: mixed drill across weeks 2 and 3
- Learning goal: distinguish between search over structure and search over answer space
- Representative problem types: one graph or tree problem and one binary-search-style feasibility problem
- Real-world system mapping: topology reasoning versus threshold tuning
- Recommended practice mode: Independent Mode
- Expected output: concise solutions plus a short tradeoff reflection

### Day 4
- Focus pattern: production mapping synthesis
- Learning goal: explain how interview patterns map to real systems without losing algorithmic precision
- Representative problem types: discuss and solve one problem, then map it to a production scenario
- Real-world system mapping: queues, caches, rolling metrics, ranking, deduplication
- Recommended practice mode: Guided Mode
- Expected output: one Python solution and one engineering mapping write-up

### Day 5
- Focus pattern: mock-lite review
- Learning goal: solve under moderate pressure with restrained hints and post-session evaluation
- Representative problem types: mixed medium difficulty prompt with multiple plausible approaches
- Real-world system mapping: system choice under ambiguity rather than pure pattern repetition
- Recommended practice mode: Simulator-style, but secondary and lightweight
- Expected output: interview-style solution, feedback summary, and memory log

### End-Of-Week Checkpoint
- can you identify the pattern before coding
- can you explain why one optimization fits better than another
- can you connect interview solutions to production concerns without drifting into vague systems talk
- can you write simple tests and readable Python under time pressure

## Curriculum-Wide Expectations
- prefer readable Python over compressed tricks
- use standard library tools when they make reasoning clearer
- write small tests for each problem
- state time and space complexity explicitly
- review mistakes before moving on
- log durable learning artifacts after meaningful sessions
