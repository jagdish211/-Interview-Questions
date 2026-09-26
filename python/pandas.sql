-- ============================================================
-- PANDAS INTERVIEW QUESTIONS & ANSWERS
-- FOR DATA ANALYST / DATA SCIENTIST INTERVIEWS
-- 100 INTERVIEW QUESTIONS WITH PRACTICAL EXAMPLES & DIAGRAMS
-- ============================================================

-- ============================================================
-- SECTION 1: PANDAS BASICS
-- ============================================================

-- Q1. What is Pandas?
-- ANSWER:
-- Pandas is an open-source Python library used for data
-- manipulation, data analysis, cleaning, and preprocessing.
-- It provides two main data structures:
-- 1. Series
-- 2. DataFrame
-- Pandas is widely used by Data Analysts and Data Scientists
-- for working with structured and tabular data.

-- ============================================================

-- Q2. Why is Pandas used in Data Science?
-- ANSWER:
-- Pandas is used for:
-- 1. Data cleaning
-- 2. Data transformation
-- 3. Data analysis
-- 4. Handling missing values
-- 5. Filtering data
-- 6. Grouping and aggregation
-- 7. Reading CSV and Excel files
-- 8. Merging datasets
-- 9. Exploratory Data Analysis (EDA)
-- Data
-- │
-- ▼
-- Pandas
-- │
-- ├── Cleaning
-- ├── Transformation
-- ├── Analysis
-- └── Visualization preparation

-- ============================================================

-- Q3. How do you import Pandas?
-- ANSWER:
-- The standard way is:
-- import pandas as pd
-- "pd" is the commonly used alias for Pandas.

-- ============================================================

-- Q4. What are the two main data structures in Pandas?
-- ANSWER:
-- The two main data structures are:
-- 1. Series
-- 2. DataFrame
-- Series → One-dimensional labeled data
-- DataFrame → Two-dimensional tabular data
-- Pandas
-- │
-- ┌─────────┴─────────┐
-- ▼ ▼
-- Series DataFrame
-- 1D 2D

-- ============================================================

-- Q5. What is a Pandas Series?
-- ANSWER:
-- A Series is a one-dimensional labeled array.
-- It can contain numbers, strings, dates, or other data types.
-- Example:
-- import pandas as pd
-- s = pd.Series([10, 20, 30])
-- print(s)
-- Output:
-- 0 10
-- 1 20
-- 2 30
-- dtype: int64
-- Diagram:
-- Index
-- │
-- ├── 0 → 10
-- ├── 1 → 20
-- └── 2 → 30

-- ============================================================

-- Q6. What is a DataFrame?
-- ANSWER:
-- A DataFrame is a two-dimensional labeled data structure.
-- It is similar to a table in a database or an Excel sheet.
-- Example:
-- df = pd.DataFrame({
-- "Name": ["Amit", "Rahul"],
-- "Age": [22, 24]
-- })
-- Output:
-- Name Age
-- 0 Amit 22
-- 1 Rahul 24
-- Diagram:
-- Name Age
-- │ │
-- ┌────┴────┬────┴───┐
-- │ Amit │ 22 │
-- ├─────────┼─────────┤
-- │ Rahul │ 24 │
-- └─────────┴─────────┘

-- ============================================================

-- Q7. What is the difference between Series and DataFrame?
-- ANSWER:
-- Series is one-dimensional.
-- DataFrame is two-dimensional.
-- Comparison:
-- Series
-- │
-- └── 1D → [10, 20, 30]
-- DataFrame
-- │
-- └── 2D →
-- ┌────┬────┐
-- │ 10 │ 20 │
-- ├────┼────┤
-- │ 30 │ 40 │
-- └────┴────┘

-- ============================================================

-- Q8. How do you create a DataFrame?
-- ANSWER:
-- Use pd.DataFrame().
-- Example:
-- df = pd.DataFrame({
-- "Name": ["Amit", "Riya"],
-- "Age": [22, 23]
-- })
-- Output:
-- Name Age
-- 0 Amit 22
-- 1 Riya 23

-- ============================================================

-- Q9. How do you check the first five rows of a DataFrame?
-- ANSWER:
-- Use head().
-- Example:
-- df.head()
-- By default, head() returns the first 5 rows.

-- ============================================================

-- Q10. How do you check the last five rows?
-- ANSWER:
-- Use tail().
-- Example:
-- df.tail()
-- By default, tail() returns the last 5 rows.

-- ============================================================

-- ============================================================
-- SECTION 2: READING AND INSPECTING DATA
-- ============================================================

-- Q11. How do you read a CSV file using Pandas?
-- ANSWER:
-- Use pd.read_csv().
-- Example:
-- df = pd.read_csv("sales.csv")
-- CSV File
-- │
-- ▼
-- read_csv()
-- │
-- ▼
-- DataFrame

-- ============================================================

-- Q12. How do you read an Excel file using Pandas?
-- ANSWER:
-- Use pd.read_excel().
-- Example:
-- df = pd.read_excel("sales.xlsx")

-- ============================================================

-- Q13. How do you inspect the first few records?
-- ANSWER:
-- Use:
-- df.head()
-- You can also specify the number of rows:
-- df.head(10)

-- ============================================================

-- Q14. How do you inspect the last few records?
-- ANSWER:
-- Use:
-- df.tail()
-- Example:
-- df.tail(10)

-- ============================================================

-- Q15. What does df.shape return?
-- ANSWER:
-- df.shape returns the number of rows and columns.
-- Example:
-- df.shape
-- Output:
-- (1000, 8)
-- This means:
-- 1000 rows
-- 8 columns
-- Diagram:
-- Columns
-- ┌──────────────┐
-- Rows │ 1000 × 8 │
-- └──────────────┘

-- ============================================================

-- Q16. What does df.info() do?
-- ANSWER:
-- df.info() provides information about:
-- 1. Number of rows
-- 2. Column names
-- 3. Non-null values
-- 4. Data types
-- 5. Memory usage
-- Example:
-- df.info()

-- ============================================================

-- Q17. What does df.describe() do?
-- ANSWER:
-- df.describe() generates descriptive statistics for
-- numerical columns by default.
-- It commonly shows:
-- count
-- mean
-- std
-- min
-- 25%
-- 50%
-- 75%
-- max
-- Example:
-- df.describe()

-- ============================================================

-- Q18. How do you check column names?
-- ANSWER:
-- Use:
-- df.columns
-- Example:
-- print(df.columns)
-- Output:
-- Index(['Name', 'Age', 'Salary'], dtype='object')

-- ============================================================

-- Q19. How do you check the data type of each column?
-- ANSWER:
-- Use:
-- df.dtypes
-- Example:
-- df.dtypes
-- Output:
-- Name object
-- Age int64
-- Salary float64

-- ============================================================

-- Q20. How do you check the number of rows and columns separately?
-- ANSWER:
-- Number of rows:
-- len(df)
-- Number of rows:
-- df.shape[0]
-- Number of columns:
-- df.shape[1]
-- Diagram:
-- df.shape
-- │
-- ├── [0] → Rows
-- └── [1] → Columns

-- ============================================================

-- ============================================================
-- SECTION 3: SELECTING AND FILTERING DATA
-- ============================================================

-- Q21. How do you select a single column?
-- ANSWER:
-- Use:
-- df["column_name"]
-- Example:
-- df["Salary"]
-- This returns a Series.

-- ============================================================

-- Q22. How do you select multiple columns?
-- ANSWER:
-- Pass a list of column names.
-- Example:
-- df[["Name", "Salary"]]
-- DataFrame
-- │
-- ├── Name
-- ├── Age
-- └── Salary
-- │
-- ▼
-- Select Name + Salary

-- ============================================================

-- Q23. What is the difference between loc and iloc?
-- ANSWER:
-- loc is label-based indexing.
-- iloc is integer-position-based indexing.
-- Comparison:
-- DataFrame
-- │
-- ├── loc → Labels
-- │
-- └── iloc → Integer positions
-- Example:
-- df.loc[2, "Name"]
-- df.iloc[2, 0]

-- ============================================================

-- Q24. What is loc in Pandas?
-- ANSWER:
-- loc is used for label-based selection.
-- Example:
-- df.loc[2, "Name"]
-- It selects the value from row label 2
-- and column "Name".

-- ============================================================

-- Q25. What is iloc in Pandas?
-- ANSWER:
-- iloc is used for integer-position-based selection.
-- Example:
-- df.iloc[2, 0]
-- It selects the third row and first column.

-- ============================================================

-- Q26. How do you select rows using a condition?
-- ANSWER:
-- Use Boolean filtering.
-- Example:
-- df[df["Age"] > 25]
-- Diagram:
-- DataFrame
-- │
-- ▼
-- Age > 25
-- │
-- ├── True → Keep
-- └── False → Remove

-- ============================================================

-- Q27. How do you filter multiple conditions?
-- ANSWER:
-- Use:
-- & for AND
-- | for OR
-- Example:
-- df[(df["Age"] > 25) & (df["Salary"] > 50000)]
-- Important:
-- Put each condition inside parentheses.

-- ============================================================

-- Q28. How do you filter using OR condition?
-- ANSWER:
-- Use the | operator.
-- Example:
-- df[(df["City"] == "Pune") | (df["City"] == "Mumbai")]

-- ============================================================

-- Q29. How do you filter values belonging to a list?
-- ANSWER:
-- Use isin().
-- Example:
-- df[df["City"].isin(["Pune", "Mumbai", "Delhi"])]
-- Diagram:
-- City
-- │
-- ▼
-- isin(["Pune", "Mumbai"])
-- │
-- ├── Pune → True
-- ├── Mumbai → True
-- └── Delhi → False

-- ============================================================

-- Q30. How do you filter values within a range?
-- ANSWER:
-- You can use conditions or between().
-- Example:
-- df[df["Age"].between(20, 30)]
-- This selects values from 20 through 30.

-- ============================================================

-- ============================================================
-- SECTION 4: DATA CLEANING
-- ============================================================

-- Q31. How do you identify missing values?
-- ANSWER:
-- Use isna() or isnull().
-- Example:
-- df.isna()
-- To count missing values:
-- df.isna().sum()
-- Diagram:
-- Data
-- │
-- ▼
-- isna()
-- │
-- ├── True → Missing
-- └── False → Available

-- ============================================================

-- Q32. What is the difference between isna() and isnull()?
-- ANSWER:
-- They are effectively equivalent for detecting missing values.
-- Example:
-- df.isna()
-- df.isnull()
-- Both return Boolean results.

-- ============================================================

-- Q33. How do you remove missing values?
-- ANSWER:
-- Use dropna().
-- Example:
-- df.dropna()
-- Diagram:
-- Data
-- │
-- ▼
-- dropna()
-- │
-- ▼
-- Rows containing missing values removed

-- ============================================================

-- Q34. How do you fill missing values?
-- ANSWER:
-- Use fillna().
-- Example:
-- df["Age"] = df["Age"].fillna(df["Age"].median())
-- Missing
-- │
-- ▼
-- fillna()
-- │
-- ▼
-- Replacement value

-- ============================================================

-- Q35. When should you use mean, median, or mode for missing values?
-- ANSWER:
-- Mean is commonly used when numerical data is reasonably
-- symmetric and without strong outliers.
-- Median is useful when numerical data contains outliers
-- or is skewed.
-- Mode is commonly used for categorical data.
-- Comparison:
-- Numerical + symmetric → Mean
-- Numerical + outliers → Median
-- Categorical → Mode

-- ============================================================

-- Q36. What is the difference between dropna() and fillna()?
-- ANSWER:
-- dropna() removes missing values.
-- fillna() replaces missing values.
-- Missing Data
-- │
-- ├── dropna() → Remove
-- │
-- └── fillna() → Replace

-- ============================================================

-- Q37. How do you detect duplicate rows?
-- ANSWER:
-- Use duplicated().
-- Example:
-- df.duplicated()
-- To count duplicates:
-- df.duplicated().sum()

-- ============================================================

-- Q38. How do you remove duplicate rows?
-- ANSWER:
-- Use drop_duplicates().
-- Example:
-- df = df.drop_duplicates()
-- Diagram:
-- Original
-- [A]
-- [B]
-- [A]
-- [C]
-- │
-- ▼
-- drop_duplicates()
-- │
-- ▼
-- [A]
-- [B]
-- [C]

-- ============================================================

-- Q39. How do you remove a column?
-- ANSWER:
-- Use drop().
-- Example:
-- df = df.drop("Age", axis=1)
-- axis=1 means column.

-- ============================================================

-- Q40. How do you rename columns?
-- ANSWER:
-- Use rename().
-- Example:
-- df = df.rename(columns={"old_name": "new_name"})
-- Before:
-- old_name
-- │
-- ▼
-- rename()
-- │
-- ▼
-- new_name

-- ============================================================

-- ============================================================
-- SECTION 5: DATA TRANSFORMATION
-- ============================================================

-- Q41. What is apply() in Pandas?
-- ANSWER:
-- apply() applies a function along an axis of a Series or
-- DataFrame.
-- Example:
-- df["Salary"] = df["Salary"].apply(lambda x: x * 1.10)
-- Salary
-- │
-- ▼
-- apply(function)
-- │
-- ▼
-- Transformed Salary

-- ============================================================

-- Q42. What is map() in Pandas?
-- ANSWER:
-- map() is commonly used on a Series to transform or map
-- individual values.
-- Example:
-- df["Gender"] = df["Gender"].map({
-- "M": "Male",
-- "F": "Female"
-- })

-- ============================================================

-- Q43. What is the difference between map() and apply()?
-- ANSWER:
-- map() is primarily used with Series element-wise mapping.
-- apply() can apply functions to Series or DataFrame rows/columns.
-- Comparison:
-- Series
-- │
-- ├── map() → Element/value mapping
-- │
-- └── apply() → Function application

-- ============================================================

-- Q44. What is replace() in Pandas?
-- ANSWER:
-- replace() is used to replace specific values.
-- Example:
-- df["City"] = df["City"].replace({
-- "Punee": "Pune"
-- })

-- ============================================================

-- Q45. What is astype()?
-- ANSWER:
-- astype() is used to convert a column or Series to a
-- specified data type.
-- Example:
-- df["Age"] = df["Age"].astype(int)
-- Data
-- │
-- ▼
-- astype(int)
-- │
-- ▼
-- Integer data

-- ============================================================

-- Q46. How do you convert a column to datetime?
-- ANSWER:
-- Use pd.to_datetime().
-- Example:
-- df["Order_Date"] = pd.to_datetime(df["Order_Date"])
-- String Date
-- │
-- ▼
-- pd.to_datetime()
-- │
-- ▼
-- Datetime

-- ============================================================

-- Q47. How do you extract year, month, or day from a date?
-- ANSWER:
-- After converting the column to datetime, use .dt.
-- Example:
-- df["Year"] = df["Order_Date"].dt.year
-- df["Month"] = df["Order_Date"].dt.month
-- df["Day"] = df["Order_Date"].dt.day
-- Date
-- │
-- ├── .dt.year
-- ├── .dt.month
-- └── .dt.day

-- ============================================================

-- Q48. What is sort_values()?
-- ANSWER:
-- sort_values() sorts a DataFrame by one or more columns.
-- Example:
-- df.sort_values("Salary")
-- Descending:
-- df.sort_values("Salary", ascending=False)

-- ============================================================

-- Q49. How do you sort by multiple columns?
-- ANSWER:
-- Pass a list of columns.
-- Example:
-- df.sort_values(
-- ["Department", "Salary"],
-- ascending=[True, False]
-- )
-- Department
-- │
-- ▼
-- Salary
-- │
-- ▼
-- Sorted Data

-- ============================================================

-- Q50. How do you reset the index?
-- ANSWER:
-- Use reset_index().
-- Example:
-- df = df.reset_index(drop=True)
-- It creates a new default integer index.

-- ============================================================

-- ============================================================
-- SECTION 6: GROUPBY AND AGGREGATION
-- ============================================================

-- Q51. What is groupby()?
-- ANSWER:
-- groupby() groups data based on one or more columns so that
-- aggregation or analysis can be performed on each group.
-- Diagram:
-- DataFrame
-- │
-- ▼
-- groupby("City")
-- │
-- ├── Pune
-- ├── Mumbai
-- └── Delhi

-- ============================================================

-- Q52. Give an example of groupby().
-- ANSWER:
-- Example:
-- df.groupby("City")["Sales"].sum()
-- This calculates total sales for each city.

-- ============================================================

-- Q53. What is aggregation in Pandas?
-- ANSWER:
-- Aggregation summarizes multiple rows into summary values.
-- Common functions:
-- sum()
-- mean()
-- min()
-- max()
-- count()
-- median()
-- std()
-- Data
-- │
-- ▼
-- Aggregation
-- │
-- ▼
-- Summary

-- ============================================================

-- Q54. How do you calculate multiple aggregations?
-- ANSWER:
-- Use agg().
-- Example:
-- df.groupby("Department")["Salary"].agg(
-- ["min", "max", "mean"]
-- )

-- ============================================================

-- Q55. What is the difference between groupby() and pivot_table()?
-- ANSWER:
-- groupby() is commonly used to group data and perform
-- aggregations.
-- pivot_table() creates a spreadsheet-like summarized table
-- using rows, columns, and aggregation functions.
-- Comparison:
-- Data
-- │
-- ├── groupby() → Grouped summary
-- │
-- └── pivot_table() → Cross-tabular summary

-- ============================================================

-- Q56. What is pivot_table()?
-- ANSWER:
-- pivot_table() creates a summarized table from a DataFrame.
-- Example:
-- pd.pivot_table(
-- df,
-- values="Sales",
-- index="City",
-- columns="Category",
-- aggfunc="sum"
-- )

-- ============================================================

-- Q57. How do you count records in each group?
-- ANSWER:
-- Use groupby() with size() or count().
-- Example:
-- df.groupby("Department").size()
-- size() counts rows in each group.

-- ============================================================

-- Q58. What is the difference between size() and count()?
-- ANSWER:
-- size() counts rows, including rows where selected values
-- may be missing.
-- count() counts non-null values.
-- Comparison:
-- Group
-- │
-- ├── size() → Number of rows
-- │
-- └── count() → Number of non-null values

-- ============================================================

-- Q59. How do you find the average salary by department?
-- ANSWER:
-- Example:
-- df.groupby("Department")["Salary"].mean()

-- ============================================================

-- Q60. How do you find the top-selling category?
-- ANSWER:
-- Group by category, calculate total sales, and sort descending.
-- Example:
-- sales = df.groupby("Category")["Sales"].sum()
-- sales.sort_values(ascending=False)
-- Diagram:
-- Transactions
-- │
-- ▼
-- groupby(Category)
-- │
-- ▼
-- sum(Sales)
-- │
-- ▼
-- sort_values(desc)
-- │
-- ▼
-- Top Category

-- ============================================================

-- ============================================================
-- SECTION 7: MERGING, JOINING AND CONCATENATION
-- ============================================================

-- Q61. What is merge() in Pandas?
-- ANSWER:
-- merge() combines DataFrames using one or more common columns,
-- similar to SQL JOIN.
-- Example:
-- result = pd.merge(
-- customers,
-- orders,
-- on="Customer_ID",
-- how="inner"
-- )
-- Customers Orders
-- │ │
-- └── Customer_ID ───┘
-- │
-- ▼
-- merge()
-- │
-- ▼
-- Combined Data

-- ============================================================

-- Q62. What are the different types of merge joins?
-- ANSWER:
-- Common join types are:
-- 1. inner
-- 2. left
-- 3. right
-- 4. outer
-- Diagram:
-- A B
-- │ │
-- ├─ inner → Matching rows
-- ├─ left → All A + matches from B
-- ├─ right → All B + matches from A
-- └─ outer → All rows from A and B

-- ============================================================

-- Q63. What is an inner join in Pandas?
-- ANSWER:
-- An inner join returns only rows having matching keys
-- in both DataFrames.
-- A B
-- ┌───┐ ┌───┐
-- │ 1 │ │ 2 │
-- │ 2 │ │ 3 │
-- └───┘ └───┘
-- │
-- ▼
-- Result → [2]

-- ============================================================

-- Q64. What is a left join?
-- ANSWER:
-- A left join keeps all rows from the left DataFrame and
-- matching rows from the right DataFrame.
-- Left A
-- ┌───┐
-- │ 1 │───┐
-- │ 2 │ │
-- │ 3 │───┼── Right B
-- └───┘ │
-- ▼
-- All A rows preserved

-- ============================================================

-- Q65. What is a right join?
-- ANSWER:
-- A right join keeps all rows from the right DataFrame and
-- matching rows from the left DataFrame.

-- ============================================================

-- Q66. What is an outer join?
-- ANSWER:
-- An outer join keeps all rows from both DataFrames.
-- Missing matches are represented using NaN.
-- A + B
-- │
-- ▼
-- outer join
-- │
-- ▼
-- All rows from both sides

-- ============================================================

-- Q67. What is concat() in Pandas?
-- ANSWER:
-- concat() combines Pandas objects along an axis.
-- Example:
-- result = pd.concat([df1, df2])

-- ============================================================

-- Q68. What is the difference between merge() and concat()?
-- ANSWER:
-- merge() combines DataFrames based on matching keys.
-- concat() combines objects along rows or columns.
-- Comparison:
-- merge()
-- A ── key ── B
-- │
-- ▼
-- Join tables
-- concat()
-- A
-- │
-- B
-- │
-- ▼
-- Stack objects

-- ============================================================

-- Q69. How do you concatenate DataFrames vertically?
-- ANSWER:
-- Use pd.concat() with the default axis=0.
-- Example:
-- result = pd.concat([df1, df2], axis=0)
-- df1
-- ↓
-- df2
-- ↓
-- Combined rows

-- ============================================================

-- Q70. How do you concatenate DataFrames horizontally?
-- ANSWER:
-- Use pd.concat() with axis=1.
-- Example:
-- result = pd.concat([df1, df2], axis=1)
-- df1 │ df2
-- │
-- ▼
-- Combined columns

-- ============================================================

-- ============================================================
-- SECTION 8: INDEXING, DUPLICATES AND STRING OPERATIONS
-- ============================================================

-- Q71. What is an index in Pandas?
-- ANSWER:
-- An index is the label used to identify rows in a Series
-- or DataFrame.
-- Example:
-- Name
-- 0 Amit
-- 1 Riya
-- 2 Rahul
-- 0, 1, 2 are row indexes.

-- ============================================================

-- Q72. How do you set a column as the index?
-- ANSWER:
-- Use set_index().
-- Example:
-- df = df.set_index("Customer_ID")
-- Customer_ID
-- │
-- ▼
-- DataFrame Index

-- ============================================================

-- Q73. How do you reset an index?
-- ANSWER:
-- Use reset_index().
-- Example:
-- df = df.reset_index()

-- ============================================================

-- Q74. How do you check whether an index contains duplicate values?
-- ANSWER:
-- Use:
-- df.index.duplicated()
-- To check whether any duplicates exist:
-- df.index.has_duplicates

-- ============================================================

-- Q75. How do you work with string columns in Pandas?
-- ANSWER:
-- Pandas provides the .str accessor for vectorized string
-- operations.
-- Example:
-- df["Name"].str.upper()
-- String Column
-- │
-- ▼
-- .str
-- │
-- ├── upper()
-- ├── lower()
-- ├── contains()
-- └── replace()

-- ============================================================

-- Q76. How do you convert strings to lowercase?
-- ANSWER:
-- Use:
-- df["Name"].str.lower()

-- ============================================================

-- Q77. How do you convert strings to uppercase?
-- ANSWER:
-- Use:
-- df["Name"].str.upper()

-- ============================================================

-- Q78. How do you check whether a string contains a specific value?
-- ANSWER:
-- Use str.contains().
-- Example:
-- df[df["Name"].str.contains("Amit", na=False)]

-- ============================================================

-- Q79. How do you remove leading and trailing spaces?
-- ANSWER:
-- Use str.strip().
-- Example:
-- df["Name"] = df["Name"].str.strip()
-- Before:
-- " Amit "
-- │
-- ▼
-- str.strip()
-- │
-- ▼
-- "Amit"

-- ============================================================

-- Q80. How do you split a string column?
-- ANSWER:
-- Use str.split().
-- Example:
-- df["Full_Name"].str.split(" ", expand=True)
-- Full Name
-- │
-- ▼
-- str.split()
-- │
-- ├── First Name
-- └── Last Name

-- ============================================================

-- ============================================================
-- SECTION 9: ADVANCED PANDAS CONCEPTS
-- ============================================================

-- Q81. What is vectorization in Pandas?
-- ANSWER:
-- Vectorization means performing operations on an entire
-- Series or DataFrame without explicitly writing a Python loop.
-- Example:
-- df["Sales"] = df["Price"] * df["Quantity"]
-- Price × Quantity
-- │
-- ▼
-- Vectorized operation
-- │
-- ▼
-- Sales

-- ============================================================

-- Q82. Why is vectorization preferred over explicit loops?
-- ANSWER:
-- Vectorized operations are generally faster, concise, and
-- make use of optimized underlying implementations.
-- Comparison:
-- Python loop
-- Row 1 → calculate
-- Row 2 → calculate
-- Row 3 → calculate
-- Vectorization
-- [Row1 Row2 Row3] → One operation

-- ============================================================

-- Q83. What is SettingWithCopyWarning?
-- ANSWER:
-- SettingWithCopyWarning can occur when assigning values to
-- what may be a view or a copy of a DataFrame slice.
-- Problematic style:
-- df[df["Age"] > 25]["Salary"] = 50000
-- Safer approach:
-- df.loc[df["Age"] > 25, "Salary"] = 50000
-- DataFrame
-- │
-- ▼
-- Boolean selection
-- │
-- ▼
-- .loc[condition, column]
-- │
-- ▼
-- Safe assignment

-- ============================================================

-- Q84. What is copy() in Pandas?
-- ANSWER:
-- copy() creates a separate DataFrame or Series object.
-- Example:
-- new_df = df.copy()
-- Original
-- │
-- ├──────────────→ Independent Copy
-- │
-- └──────────────→ Original remains separate

-- ============================================================

-- Q85. What is a view in Pandas?
-- ANSWER:
-- A view is an object that can reference underlying data rather
-- than creating a completely independent copy.
-- In Pandas, whether an operation returns a view or copy can
-- depend on the operation and internal memory behavior.

-- ============================================================

-- Q86. What is memory usage in Pandas?
-- ANSWER:
-- memory_usage() can be used to inspect memory consumed by
-- DataFrame columns.
-- Example:
-- df.memory_usage()
-- For deeper object memory information:
-- df.info(memory_usage="deep")

-- ============================================================

-- Q87. How can you reduce Pandas memory usage?
-- ANSWER:
-- Common techniques include:
-- 1. Choosing appropriate numeric dtypes
-- 2. Converting suitable object columns to category
-- 3. Loading only required columns
-- 4. Processing large files in chunks
-- Large Data
-- │
-- ├── Optimize dtypes
-- ├── category
-- ├── selected columns
-- └── chunks
-- │
-- ▼
-- Lower memory usage

-- ============================================================

-- Q88. What is categorical data in Pandas?
-- ANSWER:
-- Categorical data represents values belonging to a limited
-- set of categories.
-- Example:
-- df["Gender"] = df["Gender"].astype("category")
-- Useful when a column has repeated categorical values.

-- ============================================================

-- Q89. What is the difference between axis=0 and axis=1?
-- ANSWER:
-- For DataFrame operations:
-- axis=0 generally operates down rows, producing results
-- for each column.
-- axis=1 generally operates across columns, producing results
-- for each row.
-- Diagram:
-- Columns
-- ↓ ↓ ↓
-- ┌───────┬───────┬───────┐
-- │ 10 │ 20 │ 30 │
-- ├───────┼───────┼───────┤
-- │ 40 │ 50 │ 60 │
-- └───────┴───────┴───────┘
-- ↓ ↓ ↓
-- axis=0
-- axis=1 → across each row

-- ============================================================

-- Q90. What is apply() with axis=1?
-- ANSWER:
-- axis=1 applies a function row by row.
-- Example:
-- df["Total"] = df.apply(
-- lambda row: row["Price"] * row["Quantity"],
-- axis=1
-- )
-- Row
-- │
-- ▼
-- apply(function, axis=1)
-- │
-- ▼
-- Result for each row

-- ============================================================

-- ============================================================
-- SECTION 10: PRACTICAL DATA ANALYST / DATA SCIENTIST QUESTIONS
-- ============================================================

-- Q91. How do you find the top 10 records by sales?
-- ANSWER:
-- Use sort_values() and head().
-- Example:
-- top10 = df.sort_values(
-- "Sales",
-- ascending=False
-- ).head(10)
-- Sales
-- │
-- ▼
-- Sort descending
-- │
-- ▼
-- head(10)
-- │
-- ▼
-- Top 10

-- ============================================================

-- Q92. How do you find the second-highest value?
-- ANSWER:
-- One approach is:
-- df["Salary"].nlargest(2).iloc[-1]
-- Another approach is:
-- df["Salary"].sort_values(
-- ascending=False
-- ).iloc[1]

-- ============================================================

-- Q93. How do you find the number of unique values in a column?
-- ANSWER:
-- Use nunique().
-- Example:
-- df["City"].nunique()
-- To see the unique values:
-- df["City"].unique()

-- ============================================================

-- Q94. What is the difference between unique(), nunique(), and value_counts()?
-- ANSWER:
-- unique() returns unique values.
-- nunique() returns the number of unique values.
-- value_counts() returns frequency of each value.
-- Comparison:
-- Column
-- │
-- ├── unique() → Values
-- ├── nunique() → Number of values
-- └── value_counts() → Frequency

-- ============================================================

-- Q95. How do you calculate the percentage of missing values?
-- ANSWER:
-- Use:
-- df.isna().mean() * 100
-- Example:
-- missing_percentage = df.isna().mean() * 100
-- Missing values
-- │
-- ▼
-- isna()
-- │
-- ▼
-- mean()
-- │
-- ▼
-- × 100
-- │
-- ▼
-- Missing percentage

-- ============================================================

-- Q96. How do you find columns containing missing values?
-- ANSWER:
-- Use:
-- missing = df.isna().sum()
-- missing = missing[missing > 0]
-- This returns only columns having missing values.

-- ============================================================

-- Q97. How do you find the correlation between numerical columns?
-- ANSWER:
-- Use corr().
-- Example:
-- df.corr(numeric_only=True)
-- Correlation values generally range from -1 to +1.
-- -1 → Strong negative relationship
-- 0 → Little or no linear relationship
-- +1 → Strong positive relationship
-- Diagram:
-- Negative Zero Positive
-- -1 ─────────────── 0 ─────────────── +1

-- ============================================================

-- Q98. How do you read a large CSV file efficiently?
-- ANSWER:
-- Use chunksize to process the file in smaller portions.
-- Example:
-- for chunk in pd.read_csv("large.csv", chunksize=10000):
-- process(chunk)
-- Large CSV
-- │
-- ▼
-- chunksize
-- │
-- ├── Chunk 1
-- ├── Chunk 2
-- ├── Chunk 3
-- └── ...
-- │
-- ▼
-- Process efficiently

-- ============================================================

-- Q99. How do you find rows based on the maximum value within each group?
-- ANSWER:
-- One common approach is using groupby() with idxmax().
-- Example:
-- idx = df.groupby("Department")["Salary"].idxmax()
-- result = df.loc[idx]
-- Department
-- │
-- ▼
-- groupby()
-- │
-- ▼
-- idxmax()
-- │
-- ▼
-- Highest Salary Row per Group

-- ============================================================

-- Q100. What are the most important Pandas operations a Data Analyst
-- should know?
-- ANSWER:
-- A Data Analyst should be comfortable with:
-- 1. read_csv()
-- 2. read_excel()
-- 3. head()
-- 4. tail()
-- 5. info()
-- 6. describe()
-- 7. shape
-- 8. dtypes
-- 9. loc
-- 10. iloc
-- 11. Boolean filtering
-- 12. isna()
-- 13. fillna()
-- 14. dropna()
-- 15. duplicated()
-- 16. drop_duplicates()
-- 17. rename()
-- 18. astype()
-- 19. apply()
-- 20. map()
-- 21. groupby()
-- 22. agg()
-- 23. pivot_table()
-- 24. merge()
-- 25. concat()
-- 26. sort_values()
-- 27. value_counts()
-- 28. unique()
-- 29. nunique()
-- 30. datetime operations
-- Data Analyst Workflow:
-- Raw Data
-- │
-- ▼
-- Read Data
-- │
-- ▼
-- Inspect
-- │
-- ▼
-- Clean
-- │
-- ▼
-- Transform
-- │
-- ▼
-- Analyze
-- │
-- ▼
-- Aggregate
-- │
-- ▼
-- Report / Visualize

-- ============================================================

-- ============================================================
-- QUICK REVISION
-- ============================================================

-- PANDAS
-- │
-- ├── Data Structures
-- │ ├── Series
-- │ └── DataFrame
-- │
-- ├── Read Data
-- │ ├── read_csv()
-- │ └── read_excel()
-- │
-- ├── Inspect Data
-- │ ├── head()
-- │ ├── tail()
-- │ ├── info()
-- │ ├── describe()
-- │ ├── shape
-- │ └── dtypes
-- │
-- ├── Select Data
-- │ ├── []
-- │ ├── loc
-- │ └── iloc
-- │
-- ├── Filter Data
-- │ ├── Conditions
-- │ ├── isin()
-- │ └── between()
-- │
-- ├── Clean Data
-- │ ├── isna()
-- │ ├── fillna()
-- │ ├── dropna()
-- │ ├── duplicated()
-- │ └── drop_duplicates()
-- │
-- ├── Transform Data
-- │ ├── apply()
-- │ ├── map()
-- │ ├── replace()
-- │ ├── astype()
-- │ └── sort_values()
-- │
-- ├── Group & Aggregate
-- │ ├── groupby()
-- │ ├── agg()
-- │ └── pivot_table()
-- │
-- ├── Combine Data
-- │ ├── merge()
-- │ └── concat()
-- │
-- ├── String Operations
-- │ ├── str.upper()
-- │ ├── str.lower()
-- │ ├── str.contains()
-- │ ├── str.strip()
-- │ └── str.split()
-- │
-- ├── Date Operations
-- │ ├── to_datetime()
-- │ └── .dt
-- │
-- └── Advanced
-- ├── vectorization
-- ├── SettingWithCopyWarning
-- ├── memory optimization
-- ├── categorical data
-- └── chunksize

-- ============================================================

-- ============================================================
-- MOST IMPORTANT QUESTIONS TO MEMORIZE
-- ============================================================

-- 1. What is Pandas?
-- 2. Series vs DataFrame
-- 3. read_csv()
-- 4. read_excel()
-- 5. head(), tail()
-- 6. info() vs describe()
-- 7. shape and dtypes
-- 8. loc vs iloc
-- 9. Boolean filtering
-- 10. isin()
-- 11. Missing values
-- 12. dropna() vs fillna()
-- 13. duplicated() vs drop_duplicates()
-- 14. apply() vs map()
-- 15. astype()
-- 16. DateTime handling
-- 17. groupby()
-- 18. agg()
-- 19. groupby() vs pivot_table()
-- 20. merge()
-- 21. Types of joins
-- 22. merge() vs concat()
-- 23. axis=0 vs axis=1
-- 24. sort_values()
-- 25. value_counts()
-- 26. unique() vs nunique()
-- 27. String operations using .str
-- 28. vectorization
-- 29. SettingWithCopyWarning
-- 30. Memory optimization
-- 31. Reading large CSV files with chunksize
-- 32. idxmax() with groupby()

-- ============================================================
-- END OF PANDAS INTERVIEW QUESTIONS & ANSWERS
-- ============================================================