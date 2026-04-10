# Real-World Mappings

## Purpose
This document maps common coding interview patterns to production engineering problems. The goal is not to turn interview prep into a distributed systems textbook. The goal is to make the pattern feel real:
- what the coding version teaches,
- what breaks at higher throughput,
- and how engineers adjust the architecture when traffic reaches 10k to 100k+ TPS.

## Sliding Window
### 1. Pattern
Sliding Window

### 2. Coding Problem Examples
- longest substring without repeats
- maximum sum subarray of size `k`
- minimum window substring

### 3. Production Problem
- rate limiting over recent requests
- rolling error-rate tracking
- recent activity counters for abuse detection

### 4. Why Naive Solutions Fail At Scale
Recomputing each window from scratch creates repeated work. At 10k to 100k+ TPS, repeated scans waste CPU, increase latency, and make hot keys expensive.

### 5. Production Architecture Patterns
- TTL-backed counters
- time-bucket aggregation
- precomputed rolling metrics
- partitioned counters per tenant or key
- caching recent windows instead of rebuilding them

### 6. Python-Level Mental Model
Track only what enters and leaves the active range. The core skill is managing changing state instead of rescanning the full sequence.

### 7. Engineering Pressures
- hot keys
- clock skew across workers
- memory growth for many active windows
- approximate versus exact counting tradeoffs

### 8. Interview Signals Tested
- incremental state maintenance
- invariant management
- knowing when a window can shrink

## Hash Maps / Indexing
### 1. Pattern
Hash Maps / Indexing

### 2. Coding Problem Examples
- two sum
- group anagrams
- frequency counting
- first unique character

### 3. Production Problem
- key-based lookup services
- inverted indexes
- entity deduplication
- session and identity joins

### 4. Why Naive Solutions Fail At Scale
Repeated linear scans become unacceptable as data grows. Without indexing, read latency rises quickly and duplicate work explodes under concurrency.

### 5. Production Architecture Patterns
- in-memory caches
- sharded counters
- partitioned indexes
- materialized views
- precomputed lookup tables

### 6. Python-Level Mental Model
A `dict` or `set` is a local version of building an index so you do not have to keep searching the raw data.

### 7. Engineering Pressures
- skewed key distribution
- index freshness
- memory overhead
- write amplification when indexes must stay updated

### 8. Interview Signals Tested
- recognizing repeated lookup work
- choosing the right tracked state
- balancing simplicity with memory use

## Two Pointers
### 1. Pattern
Two Pointers

### 2. Coding Problem Examples
- pair sum in sorted array
- container with most water
- valid palindrome
- merge sorted arrays

### 3. Production Problem
- reconciling sorted logs
- matching ordered records from two systems
- merging timelines or event streams

### 4. Why Naive Solutions Fail At Scale
Nested comparisons explode with input size. When streams are already ordered, ignoring that structure throws away free optimization.

### 5. Production Architecture Patterns
- sorted stream merges
- append-only ordered logs
- chunked scans over ordered storage
- pre-sorted batch processing

### 6. Python-Level Mental Model
Use position and order as information. Pointer movement is a cheap way to eliminate large parts of the search space.

### 7. Engineering Pressures
- out-of-order records
- late-arriving events
- reconciliation accuracy
- boundary mismatches between sources

### 8. Interview Signals Tested
- exploiting sorted order
- eliminating unnecessary comparisons
- maintaining clear pointer invariants

## Heaps / Top-K
### 1. Pattern
Heaps / Top-K

### 2. Coding Problem Examples
- top `k` frequent elements
- kth largest element
- merge k sorted lists
- find closest points

### 3. Production Problem
- ranking feeds
- alert prioritization
- top search results
- bounded-memory leaderboards

### 4. Why Naive Solutions Fail At Scale
Full sorting every candidate set is wasteful when only a small frontier matters. At high throughput, sorting everything adds latency and burns memory.

### 5. Production Architecture Patterns
- bounded heaps
- streaming top-k maintenance
- worker pools that emit candidate scores
- pre-ranking and cache layers
- offline versus online ranking separation

### 6. Python-Level Mental Model
`heapq` is the tool for maintaining a useful frontier, not a fully ordered world.

### 7. Engineering Pressures
- bursty candidate arrival
- stale scores
- fairness versus freshness
- cost of rescoring large populations

### 8. Interview Signals Tested
- partial ordering
- choosing selection over full sort
- understanding heap size and update costs

## Merge Intervals
### 1. Pattern
Merge Intervals

### 2. Coding Problem Examples
- merge intervals
- insert interval
- meeting rooms
- interval overlap checks

### 3. Production Problem
- booking systems
- maintenance windows
- calendar aggregation
- scheduled job conflict detection

### 4. Why Naive Solutions Fail At Scale
Pairwise overlap checking grows poorly and becomes hard to reason about. In high-volume schedulers, repeated overlap scans hurt both correctness and throughput.

### 5. Production Architecture Patterns
- sorted interval stores
- batched conflict resolution
- pre-merged availability windows
- materialized schedules for read-heavy traffic

### 6. Python-Level Mental Model
Sort by start time, then carry forward the current merged state. This mirrors consolidating adjacent operational windows.

### 7. Engineering Pressures
- timezone normalization
- partial updates
- concurrent writes
- read-heavy versus write-heavy schedule access

### 8. Interview Signals Tested
- sorting before linear consolidation
- boundary accuracy
- handling adjacency versus overlap correctly

## Binary Search
### 1. Pattern
Binary Search

### 2. Coding Problem Examples
- search insert position
- first bad version
- find minimum feasible capacity
- search in rotated array

### 3. Production Problem
- tuning thresholds
- capacity planning
- fast lookups over sorted indexes
- finding first safe or unsafe boundary in time-series data

### 4. Why Naive Solutions Fail At Scale
Linear probing is too slow when the state space is ordered or monotonic. In production, repeated scans against large indexes or parameter spaces waste both latency and compute.

### 5. Production Architecture Patterns
- sorted index segments
- precomputed boundaries
- threshold tuning by feasibility checks
- offline generation of monotonic search spaces

### 6. Python-Level Mental Model
Binary search is often not about finding a number. It is about finding the first point where a condition flips from false to true.

### 7. Engineering Pressures
- stale ordering assumptions
- bad boundary handling
- expensive feasibility checks
- partial data refreshes

### 8. Interview Signals Tested
- invariant discipline
- boundary correctness
- recognizing monotonic answer spaces

## Trees / Graph Traversal
### 1. Pattern
Trees / Graph Traversal

### 2. Coding Problem Examples
- level order traversal
- lowest common ancestor
- number of islands
- clone graph
- shortest path in unweighted graph

### 3. Production Problem
- dependency resolution
- service topology analysis
- file system walks
- network reachability
- permission inheritance

### 4. Why Naive Solutions Fail At Scale
Without careful traversal and visited-state control, work repeats, cycles cause failures, and the search space grows faster than expected.

### 5. Production Architecture Patterns
- adjacency lists
- frontier queues
- worker pools for graph expansion
- cached traversal results
- offline graph compaction and precomputation

### 6. Python-Level Mental Model
Choose the state you must carry:
- current node,
- visited set,
- path state,
- or level depth.
The traversal succeeds when that state is explicit and minimal.

### 7. Engineering Pressures
- graph size
- cyclic dependencies
- partial failures during expansion
- stale topology data

### 8. Interview Signals Tested
- state modeling
- BFS versus DFS choice
- handling cycles and repeated work

## Dynamic Programming
### 1. Pattern
Dynamic Programming

### 2. Coding Problem Examples
- climb stairs
- house robber
- coin change
- longest increasing subsequence

### 3. Production Problem
- offline optimization
- cost minimization over repeated substructure
- cached decision pipelines
- route or allocation scoring with repeated overlapping states

### 4. Why Naive Solutions Fail At Scale
Pure recursion recomputes the same subproblems repeatedly. At production scale, duplicated work turns feasible batch jobs into expensive, slow pipelines.

### 5. Production Architecture Patterns
- memoized computation caches
- precomputation tables
- materialized scoring layers
- offline batch optimization instead of online recomputation

### 6. Python-Level Mental Model
DP is organized remembering. Define the subproblem, define the recurrence, and store results so repeated work disappears.

### 7. Engineering Pressures
- state explosion
- memory ceilings
- online latency versus offline batch tradeoffs
- approximation when exact state is too large

### 8. Interview Signals Tested
- subproblem definition
- transition clarity
- choosing memoization versus tabulation

## Queue / Producer-Consumer
### 1. Pattern
Queue / Producer-Consumer

### 2. Coding Problem Examples
- moving average from data stream
- task scheduling
- BFS frontier processing
- recent calls counters

### 3. Production Problem
- asynchronous work pipelines
- event ingestion
- job scheduling
- buffering between fast producers and slower consumers

### 4. Why Naive Solutions Fail At Scale
Direct synchronous processing couples throughput to the slowest step. Without queues, bursts create dropped work, cascading latency, or overloaded services.

### 5. Production Architecture Patterns
- durable queues
- worker pools
- backpressure
- dead-letter handling
- batched consumers

### 6. Python-Level Mental Model
A queue lets one part of the system move at a different pace from another. In code problems, this often appears as processing order plus bounded state.

### 7. Engineering Pressures
- backlog growth
- retry storms
- uneven consumer speed
- ordering guarantees

### 8. Interview Signals Tested
- FIFO reasoning
- queue state management
- understanding throughput versus latency tradeoffs

## Retry / Idempotency / Deduplication
### 1. Pattern
Retry / Idempotency / Deduplication

### 2. Coding Problem Examples
- duplicate detection
- first unique event
- recent request tracking
- set or map based deduplication tasks

### 3. Production Problem
- safe retries for payments or writes
- deduplicating messages in at-least-once delivery
- preventing repeated side effects in distributed workflows

### 4. Why Naive Solutions Fail At Scale
Retries happen under real failure. If repeated requests are treated as new work every time, systems produce duplicate writes, double charges, inflated metrics, and hard-to-debug inconsistency.

### 5. Production Architecture Patterns
- idempotency keys
- dedupe stores with TTLs
- write-ahead logs
- replay-safe workers
- partitioned dedupe indexes

### 6. Python-Level Mental Model
A `set` or `dict` used for deduplication is a toy version of an idempotency store. The core question is whether this request has already been safely handled.

### 7. Engineering Pressures
- duplicate delivery
- bounded dedupe windows
- storage cost for keys
- consistency across retries and replicas

### 8. Interview Signals Tested
- recognizing repeated work
- state tracking for uniqueness
- reasoning about correctness under duplicate inputs
