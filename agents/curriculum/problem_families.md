# Problem Families

## Arrays And Strings
### What Makes This Family Recognizable
You are scanning linear data and the problem often turns on indexing, ordering, prefix information, or careful boundary handling.

### Common Sub-Patterns
- prefix sums
- in-place updates
- scanning for local or global properties
- substring or subarray analysis

### Common Mistakes
- off-by-one errors
- forgetting empty input or single-element cases
- optimizing before the baseline is clear

### What It Trains In The Engineer's Mind
Careful control over sequence state, boundaries, and incremental reasoning.

### How It Tends To Appear In Interviews
As a warm-up family that still exposes whether the candidate can reason cleanly under simple-looking constraints.

## Hash Maps And Sets
### What Makes This Family Recognizable
Repeated lookup, counting, grouping, or membership checks are central to the problem.

### Common Sub-Patterns
- frequency counting
- key-to-index mapping
- grouping by normalized form
- uniqueness tracking

### Common Mistakes
- using repeated list scans instead of indexed state
- storing the wrong value under each key
- ignoring duplicate behavior

### What It Trains In The Engineer's Mind
Index-building instinct and fast recognition of repeated-work elimination.

### How It Tends To Appear In Interviews
In problems where a brute-force nested scan can be replaced by tracked state in one pass.

## Two Pointers
### What Makes This Family Recognizable
The input is often ordered, or the problem can be solved by moving two positions with a controlled invariant.

### Common Sub-Patterns
- inward scans from both ends
- fast and slow pointers
- merge-style comparisons
- partitioning over sorted data

### Common Mistakes
- moving pointers without a clear reason
- failing to define the invariant
- using two pointers when the data is not ordered enough to support it

### What It Trains In The Engineer's Mind
Using structural information in the input to eliminate unnecessary search.

### How It Tends To Appear In Interviews
As pair-finding, palindrome, partitioning, or sorted-array optimization problems.

## Sliding Window
### What Makes This Family Recognizable
The problem asks about a contiguous range whose state changes gradually as the window expands or contracts.

### Common Sub-Patterns
- fixed-size windows
- variable-size windows
- at-most-k constraints
- substring or subarray optimization

### Common Mistakes
- not knowing when to shrink
- losing track of window state
- confusing sliding window with generic two-pointer movement

### What It Trains In The Engineer's Mind
Incremental state maintenance and invariant-driven updates.

### How It Tends To Appear In Interviews
As longest, shortest, maximum, or minimum contiguous-range problems.

## Intervals
### What Makes This Family Recognizable
Each item represents a range with a start and end, and the main concern is overlap, merge, ordering, or conflict.

### Common Sub-Patterns
- merging overlaps
- inserting a new interval
- counting conflicts
- resource scheduling

### Common Mistakes
- mishandling touching boundaries
- forgetting to sort first
- treating overlap cases inconsistently

### What It Trains In The Engineer's Mind
Event ordering, boundary precision, and consolidation of state over ranges.

### How It Tends To Appear In Interviews
As meeting-room, scheduling, booking, or merge tasks.

## Heaps / Top-K
### What Makes This Family Recognizable
You only need the best few items, the next item to process, or a continuously maintained frontier.

### Common Sub-Patterns
- top-k selection
- priority scheduling
- merge k sorted sources
- median maintenance variants

### Common Mistakes
- sorting the entire dataset unnecessarily
- choosing the wrong heap direction
- forgetting the heap should stay bounded when only `k` items matter

### What It Trains In The Engineer's Mind
Partial ordering and frontier maintenance under bounded memory.

### How It Tends To Appear In Interviews
As ranking, selection, priority processing, or streaming-summary problems.

## Binary Search
### What Makes This Family Recognizable
There is an ordered domain or a monotonic condition, even when the answer is not a literal element lookup.

### Common Sub-Patterns
- value lookup
- first true or last false boundary
- answer-space search
- feasibility threshold search

### Common Mistakes
- unclear loop invariants
- wrong boundary updates
- failing to notice monotonicity

### What It Trains In The Engineer's Mind
Invariant discipline and efficient search over ordered possibility spaces.

### How It Tends To Appear In Interviews
As threshold, boundary, capacity, or sorted-array questions.

## Stacks And Queues
### What Makes This Family Recognizable
Processing order matters, and the state naturally behaves like LIFO or FIFO.

### Common Sub-Patterns
- monotonic stacks
- validation stacks
- BFS queues
- producer-consumer style processing order

### Common Mistakes
- choosing a stack when a queue is needed, or the reverse
- storing too much state instead of the right state
- missing why order guarantees correctness

### What It Trains In The Engineer's Mind
Discipline about processing order and local state management.

### How It Tends To Appear In Interviews
As parser-style checks, next greater problems, BFS setup, or queue-driven simulations.

## Trees
### What Makes This Family Recognizable
The data is hierarchical, and relationships between parent and child nodes matter more than linear order.

### Common Sub-Patterns
- DFS traversals
- BFS traversals
- path accumulation
- subtree aggregation

### Common Mistakes
- confusing local node state with path state
- poor base-case handling
- mixing traversal order without intent

### What It Trains In The Engineer's Mind
Recursive structure awareness and hierarchical state propagation.

### How It Tends To Appear In Interviews
As traversal, validation, path, or subtree-summary problems.

## Graphs
### What Makes This Family Recognizable
The problem involves general relationships, connectivity, cycles, reachability, or traversal over arbitrary links.

### Common Sub-Patterns
- connected components
- BFS shortest path in unweighted graphs
- cycle detection
- adjacency modeling

### Common Mistakes
- forgetting visited state
- building the graph incorrectly
- using DFS or BFS without understanding what the question actually asks

### What It Trains In The Engineer's Mind
State modeling over networks of relationships and control over repeated exploration.

### How It Tends To Appear In Interviews
As islands, dependency graphs, path finding, or connectivity questions.

## Recursion / Backtracking
### What Makes This Family Recognizable
The problem requires exploring combinations, permutations, or decision trees with partial progress and rollback.

### Common Sub-Patterns
- subsets
- permutations
- combination search
- constraint-based generation

### Common Mistakes
- mutating shared state incorrectly
- forgetting to undo choices
- exploring too much because pruning logic is weak

### What It Trains In The Engineer's Mind
Choice-tree reasoning, controlled state mutation, and pruning.

### How It Tends To Appear In Interviews
As exhaustive search tasks where correctness comes before pruning quality.

## Dynamic Programming
### What Makes This Family Recognizable
The brute-force solution repeats the same subproblems, and the problem can be framed through a recurrence or transition.

### Common Sub-Patterns
- one-dimensional DP
- grid DP
- include/exclude decisions
- sequence optimization

### Common Mistakes
- defining the wrong state
- mixing transition logic with implementation details
- memorizing formulas without understanding the subproblem

### What It Trains In The Engineer's Mind
Decomposing hard problems into reusable subresults and explicit transitions.

### How It Tends To Appear In Interviews
As optimization or counting problems where brute force is easy to state but too expensive to run.
