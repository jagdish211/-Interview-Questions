-- ============================================================
-- NUMPY INTERVIEW QUESTIONS & ANSWERS
-- WITH DIAGRAMS FOR IMPORTANT CONCEPTS
-- ============================================================


-- ============================================================
-- SECTION 1: NUMPY BASICS
-- ============================================================

-- Q1. What is NumPy?
-- ANSWER:
-- NumPy stands for Numerical Python.
-- It is a Python library used for numerical and scientific
-- computing.
-- Its main object is the ndarray (N-dimensional array).


-- Q2. Why is NumPy used in Data Science?
-- ANSWER:
-- NumPy is used for:
-- 1. Fast numerical calculations
-- 2. Working with arrays and matrices
-- 3. Mathematical operations
-- 4. Statistical calculations
-- 5. Data manipulation
-- 6. Efficient memory usage


-- Q3. What is an ndarray?
-- ANSWER:
-- ndarray means N-dimensional array.
-- It is the main data structure provided by NumPy.
--
-- DIAGRAM:
--
-- 1D ARRAY
-- ┌────┬────┬────┬────┐
-- │ 10 │ 20 │ 30 │ 40 │
-- └────┴────┴────┴────┘
--
-- 2D ARRAY
-- ┌────┬────┬────┐
-- │ 10 │ 20 │ 30 │
-- ├────┼────┼────┤
-- │ 40 │ 50 │ 60 │
-- └────┴────┴────┘
--
-- 3D ARRAY
-- ┌───────────────┐
-- │ 2D ARRAY      │
-- │ ┌───┬───┐     │
-- │ │ 1 │ 2 │     │
-- │ ├───┼───┤     │
-- │ │ 3 │ 4 │     │
-- │ └───┴───┘     │
-- └───────────────┘


-- Q4. How do you import NumPy?
-- ANSWER:
-- import numpy as np


-- Q5. What is the difference between a Python list and NumPy array?
-- ANSWER:
-- Python lists can store different data types.
-- NumPy arrays are designed for numerical operations.
--
-- DIAGRAM:
--
-- Python List:
-- ┌────┬──────┬──────┐
-- │ 10 │ "ABC"│ 3.14 │
-- └────┴──────┴──────┘
--
-- NumPy Array:
-- ┌────┬────┬────┬────┐
-- │ 10 │ 20 │ 30 │ 40 │
-- └────┴────┴────┴────┘
--        Same Data Type


-- Q6. What is the main advantage of NumPy?
-- ANSWER:
-- Fast and efficient numerical computation using vectorized
-- operations.
--
-- DIAGRAM:
--
-- Python Loop
-- 10 → 20 → 30 → 40 → 50
--       ↓
--    One by one
--
-- NumPy
-- [10 20 30 40 50]
--       ↓
--  Vectorized
--  Operation


-- Q7. Can a NumPy array contain different data types?
-- ANSWER:
-- Normally, a NumPy array stores elements of the same data type.
-- NumPy may convert different input types to a common compatible
-- data type.


-- Q8. What is the difference between 1D, 2D and 3D arrays?
-- ANSWER:
-- 1D = one dimension
-- 2D = rows and columns
-- 3D = collection of 2D arrays
--
-- DIAGRAM:
--
-- 1D
-- [10 20 30 40]
--
-- 2D
-- [10 20]
-- [30 40]
--
-- 3D
-- ┌──────────┐
-- │ [1 2]    │
-- │ [3 4]    │
-- ├──────────┤
-- │ [5 6]    │
-- │ [7 8]    │
-- └──────────┘


-- Q9. What is a scalar in NumPy?
-- ANSWER:
-- A scalar is a single value.
--
-- DIAGRAM:
--
-- Scalar
-- ┌────┐
-- │ 10 │
-- └────┘


-- Q10. What is a vector in NumPy?
-- ANSWER:
-- A vector is generally represented by a 1D array.
--
-- DIAGRAM:
--
-- Vector
-- ┌────┬────┬────┬────┐
-- │ 10 │ 20 │ 30 │ 40 │
-- └────┴────┴────┴────┘


-- ============================================================
-- SECTION 2: CREATING NUMPY ARRAYS
-- ============================================================

-- Q11. How do you create a NumPy array?
-- ANSWER:
-- Use np.array().
--
-- Example:
-- arr = np.array([1, 2, 3, 4])
--
-- DIAGRAM:
--
-- Python List
-- [1, 2, 3, 4]
--       │
--       ▼
-- np.array()
--       │
--       ▼
-- NumPy Array
-- [1 2 3 4]


-- Q12. How do you create a 2D NumPy array?
-- ANSWER:
-- Use nested lists.
--
-- DIAGRAM:
--
-- [ [1, 2, 3],
--   [4, 5, 6] ]
--
--        ↓
--
-- ┌───┬───┬───┐
-- │ 1 │ 2 │ 3 │
-- ├───┼───┼───┤
-- │ 4 │ 5 │ 6 │
-- └───┴───┴───┘


-- Q13. What does np.zeros() do?
-- ANSWER:
-- Creates an array filled with zeros.
--
-- DIAGRAM:
--
-- np.zeros(5)
--      ↓
-- [0 0 0 0 0]


-- Q14. What does np.ones() do?
-- ANSWER:
-- Creates an array filled with ones.
--
-- DIAGRAM:
--
-- np.ones(5)
--      ↓
-- [1 1 1 1 1]


-- Q15. What does np.full() do?
-- ANSWER:
-- Creates an array filled with a specified value.
--
-- DIAGRAM:
--
-- np.full(5, 10)
--       ↓
-- [10 10 10 10 10]


-- Q16. What does np.empty() do?
-- ANSWER:
-- Creates an array without initializing its values.
-- The values may contain whatever data was already present
-- in allocated memory.


-- Q17. What does np.arange() do?
-- ANSWER:
-- Creates evenly spaced values using a step.
--
-- DIAGRAM:
--
-- np.arange(1, 6)
--       ↓
-- 1 → 2 → 3 → 4 → 5


-- Q18. What does np.linspace() do?
-- ANSWER:
-- Creates a specified number of evenly spaced values between
-- two endpoints.
--
-- DIAGRAM:
--
-- 0        2.5       5       7.5       10
-- ●─────────●────────●────────●────────●
--
-- np.linspace(0, 10, 5)


-- Q19. Difference between np.arange() and np.linspace()?
-- ANSWER:
-- arange() → focuses on step size.
-- linspace() → focuses on number of values.
--
-- DIAGRAM:
--
-- arange:
-- Start → Step → Step → Step
--
-- linspace:
-- Start ───── Equal Distance ───── End


-- Q20. What does np.eye() do?
-- ANSWER:
-- Creates a 2D identity matrix.
--
-- DIAGRAM:
--
-- ┌───┬───┬───┐
-- │ 1 │ 0 │ 0 │
-- ├───┼───┼───┤
-- │ 0 │ 1 │ 0 │
-- ├───┼───┼───┤
-- │ 0 │ 0 │ 1 │
-- └───┴───┴───┘


-- ============================================================
-- SECTION 3: ARRAY ATTRIBUTES
-- ============================================================

-- Q21. What is ndim?
-- ANSWER:
-- ndim returns the number of dimensions.
--
-- DIAGRAM:
--
-- 1D → [1 2 3]
--       ndim = 1
--
-- 2D → [1 2]
--      [3 4]
--       ndim = 2
--
-- 3D → collection of 2D arrays
--       ndim = 3


-- Q22. What is shape?
-- ANSWER:
-- shape returns the size of each dimension.
--
-- DIAGRAM:
--
-- ┌────┬────┬────┐
-- │ 1  │ 2  │ 3  │
-- ├────┼────┼────┤
-- │ 4  │ 5  │ 6  │
-- └────┴────┴────┘
--
-- 2 Rows × 3 Columns
--
-- shape = (2, 3)


-- Q23. What is size?
-- ANSWER:
-- size returns the total number of elements.
--
-- DIAGRAM:
--
-- ┌────┬────┬────┐
-- │ 1  │ 2  │ 3  │
-- ├────┼────┼────┤
-- │ 4  │ 5  │ 6  │
-- └────┴────┴────┘
--
-- Total elements = 6
-- size = 6


-- Q24. What is dtype?
-- ANSWER:
-- dtype tells the data type of array elements.
--
-- DIAGRAM:
--
-- [10 20 30 40]
--       ↓
--     dtype
--       ↓
--      int64


-- Q25. What is itemsize?
-- ANSWER:
-- itemsize returns the number of bytes used by each element.
--
-- DIAGRAM:
--
-- [10] [20] [30] [40]
--  ↑
--  └── itemsize = bytes per element


-- Q26. What is nbytes?
-- ANSWER:
-- nbytes returns total bytes consumed by array elements.
--
-- DIAGRAM:
--
-- Number of elements × bytes per element
--             ↓
--           nbytes


-- Q27. Difference between shape and size?
-- ANSWER:
-- shape = dimensions
-- size = total elements
--
-- DIAGRAM:
--
-- [ 1 2 3 ]
-- [ 4 5 6 ]
--
-- shape = (2,3)
-- size  = 6


-- Q28. Difference between ndim and shape?
-- ANSWER:
-- ndim = number of dimensions
-- shape = size of each dimension
--
-- DIAGRAM:
--
-- 2D Array
--       ↓
-- ndim = 2
-- shape = (2,3)


-- Q29. How can you check the data type?
-- ANSWER:
-- Use:
-- arr.dtype


-- Q30. How can you change the data type?
-- ANSWER:
-- Use astype().
--
-- DIAGRAM:
--
-- [1 2 3]
--   │
-- astype(float)
--   ↓
-- [1.0 2.0 3.0]


-- ============================================================
-- SECTION 4: INDEXING AND SLICING
-- ============================================================

-- Q31. What is indexing in NumPy?
-- ANSWER:
-- Indexing is used to access individual elements.
--
-- DIAGRAM:
--
-- Values:  [10] [20] [30] [40]
-- Index:     0    1    2    3


-- Q32. How does indexing start?
-- ANSWER:
-- Indexing starts from 0.
--
-- DIAGRAM:
--
-- Index:   0    1    2    3
--          ↓    ↓    ↓    ↓
-- Array:  10   20   30   40


-- Q33. How do you access an element from a 1D array?
-- ANSWER:
-- arr[1]
--
-- DIAGRAM:
--
-- [10] [20] [30] [40]
--       ↑
--     index 1
--
-- Output = 20


-- Q34. What is negative indexing?
-- ANSWER:
-- Negative indexing accesses values from the end.
--
-- DIAGRAM:
--
-- Positive:   0    1    2    3
--             ↓    ↓    ↓    ↓
-- Array:     10   20   30   40
--             ↑    ↑    ↑    ↑
-- Negative:  -4   -3   -2   -1


-- Q35. How do you access an element from a 2D array?
-- ANSWER:
-- Use row and column indexes.
--
-- DIAGRAM:
--
--       Col
--       0   1   2
--     ┌───┬───┬───┐
-- Row0│10 │20 │30 │
--     ├───┼───┼───┤
-- Row1│40 │50 │60 │
--     └───┴───┴───┘
--
-- arr[1,2] = 60


-- Q36. What is slicing?
-- ANSWER:
-- Slicing extracts a portion of an array.
--
-- Syntax:
-- arr[start:stop:step]
--
-- DIAGRAM:
--
-- [10] [20] [30] [40] [50]
--   0    1    2    3    4
--
-- arr[1:4]
--       ↓
-- [20] [30] [40]


-- Q37. How do you select the first three elements?
-- ANSWER:
-- arr[:3]
--
-- DIAGRAM:
--
-- [10] [20] [30] [40] [50]
--  └──────┬──────┘
--       Selected
--
-- [10] [20] [30]


-- Q38. How do you reverse a NumPy array?
-- ANSWER:
-- Use arr[::-1]
--
-- DIAGRAM:
--
-- Original:
-- [10] [20] [30] [40]
--                         ↓
-- Reverse:
-- [40] [30] [20] [10]


-- Q39. How do you select a complete row?
-- ANSWER:
-- arr[0, :]
--
-- DIAGRAM:
--
-- ┌────┬────┬────┐
-- │ 10 │ 20 │ 30 │ ← Row 0
-- ├────┼────┼────┤
-- │ 40 │ 50 │ 60 │
-- └────┴────┴────┘


-- Q40. How do you select a complete column?
-- ANSWER:
-- arr[:, 0]
--
-- DIAGRAM:
--
-- ┌────┬────┬────┐
-- │ 10 │ 20 │ 30 │
-- ├────┼────┼────┤
-- │ 40 │ 50 │ 60 │
-- └────┴────┴────┘
--   ↑
-- Column 0
-- [10, 40]


-- ============================================================
-- SECTION 5: ARRAY RESHAPING
-- ============================================================

-- Q41. What is reshape()?
-- ANSWER:
-- reshape() changes the shape of an array.
--
-- DIAGRAM:
--
-- 1D
-- [1 2 3 4 5 6]
--       │
--   reshape(2,3)
--       ↓
-- ┌───┬───┬───┐
-- │ 1 │ 2 │ 3 │
-- ├───┼───┼───┤
-- │ 4 │ 5 │ 6 │
-- └───┴───┴───┘


-- Q42. What condition is required for reshape()?
-- ANSWER:
-- Total number of elements must remain the same.
--
-- DIAGRAM:
--
-- 6 elements
--     ↓
-- ┌───────────────┐
-- │ 1 2 3 4 5 6   │
-- └───────────────┘
--     ↓
-- 2 × 3 = 6
--
-- Valid


-- Q43. What is flatten()?
-- ANSWER:
-- Converts a multi-dimensional array into 1D.
-- It returns a copy.
--
-- DIAGRAM:
--
-- ┌───┬───┬───┐
-- │ 1 │ 2 │ 3 │
-- ├───┼───┼───┤
-- │ 4 │ 5 │ 6 │
-- └───┴───┴───┘
--       ↓
--    flatten()
--       ↓
-- [1 2 3 4 5 6]


-- Q44. What is ravel()?
-- ANSWER:
-- Converts an array into 1D.
-- It generally tries to return a view when possible.
--
-- DIAGRAM:
--
-- 2D Array
-- [1 2 3]
-- [4 5 6]
--     ↓
--   ravel()
--     ↓
-- [1 2 3 4 5 6]


-- Q45. Difference between flatten() and ravel()?
-- ANSWER:
-- flatten() → copy
-- ravel()   → view when possible
--
-- DIAGRAM:
--
-- flatten()
-- Original ──→ COPY
--
-- ravel()
-- Original ──→ VIEW
--                 │
--                 └── same underlying data when possible


-- Q46. What does transpose() do?
-- ANSWER:
-- transpose() swaps axes.
--
-- DIAGRAM:
--
-- Original:
-- ┌───┬───┬───┐
-- │ 1 │ 2 │ 3 │
-- ├───┼───┼───┤
-- │ 4 │ 5 │ 6 │
-- └───┴───┴───┘
--
--       ↓ transpose
--
-- ┌───┬───┐
-- │ 1 │ 4 │
-- ├───┼───┤
-- │ 2 │ 5 │
-- ├───┼───┤
-- │ 3 │ 6 │
-- └───┴───┘


-- Q47. What is .T?
-- ANSWER:
-- .T returns the transpose.
--
-- DIAGRAM:
--
-- arr
--   │
--   └── .T
--        ↓
--    Transposed array


-- Q48. What is resize()?
-- ANSWER:
-- resize() can change both shape and total size.
--
-- DIAGRAM:
--
-- [1 2 3 4]
--      ↓
-- resize(2,3)
--      ↓
-- [1 2 3]
-- [4 0 0]


-- Q49. Can reshape() change the original array?
-- ANSWER:
-- reshape() returns a reshaped array.
-- It may return a view depending on the memory layout.
--
-- DIAGRAM:
--
-- Original Data
--      │
--      ├── View
--      │
--      └── Reshaped Array


-- Q50. How do you convert a 2D array into a 1D array?
-- ANSWER:
-- Use flatten() or ravel().
--
-- DIAGRAM:
--
-- 2D → flatten/ravel → 1D
--
-- [1 2]       [1 2 3 4]
-- [3 4]  ──→


-- ============================================================
-- SECTION 6: NUMPY OPERATIONS
-- ============================================================

-- Q51. What are vectorized operations?
-- ANSWER:
-- Operations performed on entire arrays without explicitly
-- writing Python loops.
--
-- DIAGRAM:
--
-- [1 2 3 4] + 10
--       ↓
-- [11 12 13 14]
--
-- One operation on the whole array.


-- Q52. How do you add two NumPy arrays?
-- ANSWER:
-- a + b
--
-- DIAGRAM:
--
-- [1 2 3]       [4 5 6]
--    +             =
-- [5 7 9]


-- Q53. How do you multiply two NumPy arrays?
-- ANSWER:
-- a * b
--
-- DIAGRAM:
--
-- [1 2 3]
--   ×
-- [4 5 6]
--   ↓
-- [4 10 18]
--
-- Element-wise multiplication.


-- Q54. What is element-wise operation?
-- ANSWER:
-- Operation is performed on corresponding elements.
--
-- DIAGRAM:
--
-- [1  2  3]
--  ×  ×  ×
-- [4  5  6]
--  ↓  ↓  ↓
-- [4 10 18]


-- Q55. Difference between * and @?
-- ANSWER:
-- * → element-wise multiplication
-- @ → matrix multiplication
--
-- DIAGRAM:
--
-- a * b
-- [1 2] * [3 4]
--      ↓
-- [3 8]
--
-- a @ b
-- Matrix × Matrix
--      ↓
-- Matrix result


-- Q56. How do you calculate square of every element?
-- ANSWER:
-- arr ** 2
--
-- DIAGRAM:
--
-- [2 3 4]
--   ↓²
-- [4 9 16]


-- Q57. How do you calculate square root?
-- ANSWER:
-- np.sqrt(arr)
--
-- DIAGRAM:
--
-- [4 9 16]
--    ↓ sqrt
-- [2 3 4]


-- Q58. How do you calculate absolute values?
-- ANSWER:
-- np.abs(arr)
--
-- DIAGRAM:
--
-- [-5 -2 3]
--     ↓ abs
-- [ 5  2 3]


-- Q59. How do you round NumPy values?
-- ANSWER:
-- np.round(arr)
--
-- DIAGRAM:
--
-- [1.2 2.7 3.4]
--       ↓
-- [1.0 3.0 3.0]


-- Q60. How do you calculate exponential values?
-- ANSWER:
-- np.exp(arr)
--
-- DIAGRAM:
--
-- [1 2 3]
--    ↓ exp
-- [e¹ e² e³]


-- ============================================================
-- SECTION 7: AGGREGATION FUNCTIONS
-- ============================================================

-- Q61. How do you calculate sum?
-- ANSWER:
-- np.sum(arr)
--
-- DIAGRAM:
--
-- [10 20 30 40]
--  └──┬──┬──┬──┘
--     ↓
--    SUM
--     ↓
--    100


-- Q62. How do you calculate mean?
-- ANSWER:
-- np.mean(arr)
--
-- DIAGRAM:
--
-- [10 20 30 40]
--       ↓
-- Mean = 25


-- Q63. How do you calculate median?
-- ANSWER:
-- np.median(arr)
--
-- DIAGRAM:
--
-- [10 20 30 40]
--       ↓
-- Middle values
--       ↓
--    20, 30
--       ↓
--    Median = 25


-- Q64. How do you find minimum value?
-- ANSWER:
-- np.min(arr)
--
-- DIAGRAM:
--
-- [10 5 30 20]
--      ↓
--     MIN
--      ↓
--      5


-- Q65. How do you find maximum value?
-- ANSWER:
-- np.max(arr)
--
-- DIAGRAM:
--
-- [10 50 30 20]
--      ↓
--     MAX
--      ↓
--     50


-- Q66. How do you calculate standard deviation?
-- ANSWER:
-- np.std(arr)
--
-- DIAGRAM:
--
-- Data
--  ↓
-- Mean
--  ↓
-- Distance from Mean
--  ↓
-- Standard Deviation


-- Q67. How do you calculate variance?
-- ANSWER:
-- np.var(arr)
--
-- DIAGRAM:
--
-- Data
--  ↓
-- Mean
--  ↓
-- Squared Differences
--  ↓
-- Variance


-- Q68. Difference between mean and median?
-- ANSWER:
-- Mean = average
-- Median = middle value after sorting
--
-- DIAGRAM:
--
-- Data:
-- [10 20 30 40 100]
--
-- Mean = 40
-- Median = 30


-- Q69. What is axis in NumPy?
-- ANSWER:
-- axis specifies the direction along which an operation occurs.
--
-- DIAGRAM:
--
--        Column
--          ↓
--       ↓   ↓   ↓
--      ┌───┬───┬───┐
-- Row →│ 1 │ 2 │ 3 │
--      ├───┼───┼───┤
-- Row →│ 4 │ 5 │ 6 │
--      └───┴───┴───┘
--
-- axis=0 → down columns
-- axis=1 → across rows


-- Q70. What does np.sum(arr, axis=0) mean?
-- ANSWER:
-- It calculates the sum down the rows for each column.
--
-- DIAGRAM:
--
--       ↓   ↓   ↓
--      ┌───┬───┬───┐
--      │ 1 │ 2 │ 3 │
--      ├───┼───┼───┤
--      │ 4 │ 5 │ 6 │
--      └───┴───┴───┘
--       ↓   ↓   ↓
--      [5   7   9]
--
-- axis=0


-- ============================================================
-- SECTION 8: BOOLEAN INDEXING AND WHERE
-- ============================================================

-- Q71. What is Boolean indexing?
-- ANSWER:
-- Uses True/False conditions to filter values.
--
-- DIAGRAM:
--
-- Array:
-- [10 20 30 40]
--
-- arr > 20
-- [ F   F   T   T ]
--
-- Result:
-- [30 40]


-- Q72. How do you find values greater than 50?
-- ANSWER:
-- arr[arr > 50]
--
-- DIAGRAM:
--
-- [20 60 40 80 30]
--     ↑     ↑
--    >50   >50
--
-- Result:
-- [60 80]


-- Q73. What is np.where()?
-- ANSWER:
-- np.where() finds indexes or selects values based on a condition.
--
-- DIAGRAM:
--
-- [10 60 20 80]
--      ↓
--   condition
--   > 50
--      ↓
-- [ F  T  F  T ]
--      ↓     ↓
--     1     3
--
-- Indexes = [1, 3]


-- Q74. Give an example of np.where().
-- ANSWER:
-- np.where(arr > 50)
--
-- DIAGRAM:
--
-- Array → [10 60 20 80]
--              ↓
--          arr > 50
--              ↓
--          [1, 3]


-- Q75. How can np.where() replace values conditionally?
-- ANSWER:
-- np.where(arr > 50, 100, 0)
--
-- DIAGRAM:
--
-- [20 60 40 80]
--      ↓
--   > 50 ?
--   /     \
-- YES      NO
--  ↓        ↓
-- 100       0
--
-- Result:
-- [0 100 0 100]


-- Q76. Difference between Boolean indexing and np.where()?
-- ANSWER:
-- Boolean indexing → filters values.
-- np.where() → can find indexes or choose values conditionally.
--
-- DIAGRAM:
--
-- Boolean:
-- Array → Condition → Filtered Values
--
-- where():
-- Array → Condition → Index / Value Selection


-- ============================================================
-- SECTION 9: BROADCASTING
-- ============================================================

-- Q77. What is broadcasting?
-- ANSWER:
-- Broadcasting allows operations between compatible arrays
-- having different shapes.
--
-- DIAGRAM:
--
-- Array:
-- [1 2 3]
--
-- Scalar:
--     10
--     ↓
-- [10 10 10]
--
-- Addition:
-- [1 2 3]
-- [10 10 10]
-- ──────────
-- [11 12 13]


-- Q78. Why is broadcasting useful?
-- ANSWER:
-- It avoids manually repeating values and allows efficient
-- vectorized operations.
--
-- DIAGRAM:
--
-- [1 2 3 4]
--     +
--    10
--     ↓
-- [11 12 13 14]


-- Q79. Give a simple broadcasting example.
-- ANSWER:
-- arr + 10
--
-- DIAGRAM:
--
-- [1 2 3]
--   +
-- [10 10 10]
--   =
-- [11 12 13]


-- Q80. What is the main rule of broadcasting?
-- ANSWER:
-- Dimensions are compatible when they are equal or one dimension
-- is 1.
--
-- DIAGRAM:
--
-- Shape (3, 1)
--       +
-- Shape (1, 4)
--       ↓
-- Shape (3, 4)
--
-- Compatible dimensions:
-- Equal OR 1


-- ============================================================
-- SECTION 10: SORTING, SEARCHING AND UNIQUE
-- ============================================================

-- Q81. How do you sort a NumPy array?
-- ANSWER:
-- np.sort(arr)
--
-- DIAGRAM:
--
-- Before:
-- [40 10 30 20]
--       ↓ sort
-- After:
-- [10 20 30 40]


-- Q82. What is argsort()?
-- ANSWER:
-- Returns indexes that would sort an array.
--
-- DIAGRAM:
--
-- Values:
-- [40 10 30]
--  0   1   2
--
-- Sorted values:
-- [10 30 40]
--
-- Original indexes:
-- [1  2  0]
--
-- argsort() = [1 2 0]


-- Q83. What is argmax()?
-- ANSWER:
-- Returns the index of the maximum value.
--
-- DIAGRAM:
--
-- [10 80 30 40]
--     ↑
--   MAX
--   index = 1
--
-- argmax() = 1


-- Q84. What is argmin()?
-- ANSWER:
-- Returns the index of the minimum value.
--
-- DIAGRAM:
--
-- [10 80 30 40]
--  ↑
-- MIN
-- index = 0


-- Q85. What is np.unique()?
-- ANSWER:
-- Returns unique values.
--
-- DIAGRAM:
--
-- [10 20 10 30 20 40]
--       ↓ unique
-- [10 20 30 40]


-- Q86. How do you count occurrences of unique values?
-- ANSWER:
-- np.unique(arr, return_counts=True)
--
-- DIAGRAM:
--
-- Values:
-- [10 20 10 30 20]
--
-- Unique:
-- [10 20 30]
--
-- Counts:
-- [ 2  2  1 ]


-- Q87. What is searchsorted()?
-- ANSWER:
-- Finds the position where a value can be inserted in a sorted
-- array.
--
-- DIAGRAM:
--
-- Sorted:
-- [10 20 30 40]
--
-- Insert 25:
-- [10 20 | 25 | 30 40]
--          ↑
--       position = 2


-- Q88. How can you find duplicate values?
-- ANSWER:
-- Use np.unique(arr, return_counts=True).
--
-- DIAGRAM:
--
-- [10 20 10 30 20]
--       ↓
-- Unique + Count
--       ↓
-- 10 → 2 times
-- 20 → 2 times
-- 30 → 1 time
--
-- Duplicates:
-- [10, 20]


-- ============================================================
-- SECTION 11: JOINING AND SPLITTING ARRAYS
-- ============================================================

-- Q89. What is np.concatenate()?
-- ANSWER:
-- Joins arrays along an existing axis.
--
-- DIAGRAM:
--
-- Array A       Array B
-- [1 2 3]  +    [4 5 6]
--       \          /
--        \        /
--         ↓      ↓
--      [1 2 3 4 5 6]
--
-- concatenate()


-- Q90. What is np.vstack()?
-- ANSWER:
-- Stacks arrays vertically.
--
-- DIAGRAM:
--
-- [1 2 3]
--     +
-- [4 5 6]
--     ↓
-- ┌───┬───┬───┐
-- │ 1 │ 2 │ 3 │
-- ├───┼───┼───┤
-- │ 4 │ 5 │ 6 │
-- └───┴───┴───┘
--
-- Vertical = rows added


-- Q91. What is np.hstack()?
-- ANSWER:
-- Stacks arrays horizontally.
--
-- DIAGRAM:
--
-- [1 2] + [3 4]
--      ↓
-- [1 2 3 4]
--
-- Horizontal = columns added


-- Q92. What is np.stack()?
-- ANSWER:
-- Joins arrays along a new axis.
--
-- DIAGRAM:
--
-- Array A        Array B
-- [1 2 3]        [4 5 6]
--      \            /
--       \          /
--        ↓        ↓
--       New Axis
--          ↓
--    3D structure


-- Q93. What does np.split() do?
-- ANSWER:
-- np.split() splits an array into multiple sub-arrays.
--
-- DIAGRAM:
--
-- Original Array
--
-- ┌────┬────┬────┬────┬────┬────┐
-- │ 10 │ 20 │ 30 │ 40 │ 50 │ 60 │
-- └────┴────┴────┴────┴────┴────┘
--              │
--              │ np.split(arr, 3)
--              ▼
--
-- ┌────┬────┐   ┌────┬────┐   ┌────┬────┐
-- │ 10 │ 20 │   │ 30 │ 40 │   │ 50 │ 60 │
-- └────┴────┘   └────┴────┘   └────┴────┘
--    Part 1         Part 2         Part 3
--
-- Original Array → Multiple Sub-arrays


-- Q94. Difference between vstack() and hstack()?
-- ANSWER:
-- vstack() → vertical stacking
-- hstack() → horizontal stacking
--
-- DIAGRAM:
--
-- vstack:
-- [1 2]       [1 2]
-- [3 4]  +    [3 4]
--              ↓
--          Rows added
--
-- hstack:
-- [1 2] + [3 4]
--      ↓
-- [1 2 3 4]
--          ↑
--      Columns added


-- ============================================================
-- SECTION 12: MISSING VALUES AND SPECIAL VALUES
-- ============================================================

-- Q95. What is np.nan?
-- ANSWER:
-- np.nan represents Not a Number.
-- It is commonly used for missing numerical values.
--
-- DIAGRAM:
--
-- [10 20 NaN 40]
--          ↑
--       Missing value


-- Q96. How do you check for NaN values?
-- ANSWER:
-- np.isnan(arr)
--
-- DIAGRAM:
--
-- [10  NaN  30]
--   ↓    ↓    ↓
-- [ F    T    F ]
--
-- True = NaN
-- False = Not NaN


-- Q97. What is np.nanmean()?
-- ANSWER:
-- Calculates mean while ignoring NaN values.
--
-- DIAGRAM:
--
-- [10 20 NaN 40]
--          ↓
--      Ignore NaN
--          ↓
--    Mean(10,20,40)
--          ↓
--       23.33


-- Q98. What is np.nansum()?
-- ANSWER:
-- Calculates sum while ignoring NaN values.
--
-- DIAGRAM:
--
-- [10 20 NaN 40]
--          ↓
--      Ignore NaN
--          ↓
--       10+20+40
--          ↓
--          70


-- Q99. How do you check for infinite values?
-- ANSWER:
-- Use np.isinf(arr)
--
-- DIAGRAM:
--
-- [10  ∞  20]
--   ↓   ↓   ↓
-- [ F   T   F ]
--
-- True = Infinite


-- Q100. What is the difference between copy and view?
-- ANSWER:
-- Copy creates independent data.
-- View references the same underlying data.
--
-- DIAGRAM:
--
-- COPY
-- Original Array
--      │
--      └──────→ Independent Copy
--                   │
--             Change does NOT
--             affect original
--
--
-- VIEW
-- Original Array
--      │
--      └──────→ View
--                   │
--              Same Data
--                   │
--             Change MAY affect
--             original array


-- ============================================================
-- QUICK REVISION DIAGRAM
-- ============================================================

--                    NUMPY
--                      │
--       ┌──────────────┼──────────────┐
--       │              │              │
--     Arrays        Operations      Analysis
--       │              │              │
--       ├─ 1D         ├─ +            ├─ sum()
--       ├─ 2D         ├─ -            ├─ mean()
--       ├─ 3D         ├─ *            ├─ median()
--       │             ├─ @            ├─ std()
--       │             └─ Broadcasting  └─ var()
--       │
--       ├─ Indexing
--       ├─ Slicing
--       ├─ Reshape
--       ├─ Transpose
--       │
--       ├─ Sorting
--       ├─ Searching
--       ├─ Unique
--       │
--       ├─ Joining
--       │    ├─ concatenate()
--       │    ├─ vstack()
--       │    └─ hstack()
--       │
--       ├─ Splitting
--       │    └─ split()
--       │
--       └─ Missing Values
--            ├─ NaN
--            ├─ isnan()
--            └─ nanmean()


-- ============================================================
-- MOST IMPORTANT DIAGRAMS TO MEMORIZE FOR INTERVIEW
-- ============================================================

-- 1. 1D / 2D / 3D Array
-- 2. Indexing
-- 3. Slicing
-- 4. reshape()
-- 5. flatten() vs ravel()
-- 6. transpose()
-- 7. axis=0 vs axis=1
-- 8. Broadcasting
-- 9. Boolean indexing
-- 10. np.where()
-- 11. concatenate()
-- 12. vstack()
-- 13. hstack()
-- 14. np.split()
-- 15. NaN handling
-- 16. Copy vs View