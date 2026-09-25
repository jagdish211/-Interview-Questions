-- ============================================================
-- EXCEL INTERVIEW QUESTIONS & ANSWERS
-- FOR DATA ANALYST FRESHERS
-- ============================================================


-- ============================================================
-- SECTION 1: EXCEL BASICS
-- ============================================================

-- Q1. What is Excel?
-- Answer:
-- Excel is a spreadsheet software used to store, clean,
-- analyze, calculate, and visualize data.


-- Q2. What is a Workbook?
-- Answer:
-- A workbook is an Excel file that can contain multiple worksheets.


-- Q3. What is a Worksheet?
-- Answer:
-- A worksheet is a single spreadsheet inside an Excel workbook.


-- Q4. What is a Cell?
-- Answer:
-- A cell is the intersection of a row and a column.
-- Example: A1


-- Q5. What is a Cell Reference?
-- Answer:
-- A cell reference identifies the location of a cell.
-- Example: A1, B5, C10


-- Q6. What is the difference between Relative and Absolute Reference?
-- Answer:
-- Relative reference changes when a formula is copied.
-- Example: A1
--
-- Absolute reference remains fixed.
-- Example: $A$1


-- Q7. What is Conditional Formatting?
-- Answer:
-- Conditional Formatting automatically changes the format
-- of cells based on specified conditions.
-- Example: Highlight sales greater than 50,000.


-- Q8. What is Data Validation?
-- Answer:
-- Data Validation controls what type of data can be entered
-- into a cell.
-- Example: Creating a dropdown list.


-- Q9. How do you remove duplicates in Excel?
-- Answer:
-- Select the data
-- -> Data
-- -> Remove Duplicates
-- -> Select required columns
-- -> OK


-- Q10. What is Freeze Panes?
-- Answer:
-- Freeze Panes keeps selected rows or columns visible
-- while scrolling through large datasets.



-- ============================================================
-- SECTION 2: EXCEL BASIC FUNCTIONS
-- ============================================================

-- Q11. What is SUM?
-- Answer:
-- SUM adds numbers together.
--
-- Example:
-- =SUM(A2:A10)


-- Q12. What is SUMIF?
-- Answer:
-- SUMIF adds values based on one condition.
--
-- Example:
-- =SUMIF(A:A,"Pune",B:B)


-- Q13. What is SUMIFS?
-- Answer:
-- SUMIFS adds values based on multiple conditions.
--
-- Example:
-- =SUMIFS(C:C,A:A,"Pune",B:B,"Electronics")


-- Q14. What is COUNT?
-- Answer:
-- COUNT counts cells containing numbers.


-- Q15. What is COUNTA?
-- Answer:
-- COUNTA counts non-empty cells.


-- Q16. What is COUNTIF?
-- Answer:
-- COUNTIF counts cells based on one condition.
--
-- Example:
-- =COUNTIF(A:A,"Completed")


-- Q17. What is COUNTIFS?
-- Answer:
-- COUNTIFS counts cells based on multiple conditions.


-- Q18. What is AVERAGE?
-- Answer:
-- AVERAGE calculates the average of numerical values.
--
-- Example:
-- =AVERAGE(B2:B20)


-- Q19. What is AVERAGEIF?
-- Answer:
-- AVERAGEIF calculates the average based on one condition.


-- Q20. What is AVERAGEIFS?
-- Answer:
-- AVERAGEIFS calculates the average based on multiple conditions.



-- ============================================================
-- SECTION 3: LOGICAL FUNCTIONS
-- ============================================================

-- Q21. What is the IF function?
-- Answer:
-- IF checks a condition and returns one value if TRUE
-- and another value if FALSE.
--
-- Example:
-- =IF(A2>=50,"Pass","Fail")


-- Q22. What is Nested IF?
-- Answer:
-- Nested IF means using multiple IF conditions inside
-- another IF formula.
--
-- Example:
-- =IF(A2>=80,"Excellent",IF(A2>=60,"Good","Average"))


-- Q23. What is IFERROR?
-- Answer:
-- IFERROR handles errors and returns a custom value.
--
-- Example:
-- =IFERROR(A2/B2,0)


-- Q24. Why is IFERROR useful?
-- Answer:
-- It prevents errors such as #N/A, #DIV/0!, and #VALUE!
-- from appearing in the final report.



-- ============================================================
-- SECTION 4: TEXT FUNCTIONS
-- ============================================================

-- Q25. What is LEFT?
-- Answer:
-- LEFT extracts characters from the beginning of a text.
--
-- Example:
-- =LEFT(A2,5)


-- Q26. What is RIGHT?
-- Answer:
-- RIGHT extracts characters from the end of a text.
--
-- Example:
-- =RIGHT(A2,4)


-- Q27. What is MID?
-- Answer:
-- MID extracts characters from the middle of a text.
--
-- Example:
-- =MID(A2,3,5)


-- Q28. What is TRIM?
-- Answer:
-- TRIM removes unnecessary spaces from text.
--
-- Example:
-- =TRIM(A2)


-- Q29. What is CLEAN?
-- Answer:
-- CLEAN removes non-printable characters from text.


-- Q30. What is PROPER?
-- Answer:
-- PROPER converts text into proper case.
--
-- Example:
-- "jagdish suryawanshi"
-- becomes
-- "Jagdish Suryawanshi"


-- Q31. What is UPPER?
-- Answer:
-- UPPER converts text into uppercase.


-- Q32. What is LOWER?
-- Answer:
-- LOWER converts text into lowercase.



-- ============================================================
-- SECTION 5: LOOKUP FUNCTIONS
-- ============================================================

-- Q33. What is VLOOKUP?
-- Answer:
-- VLOOKUP searches for a value in the first column of a table
-- and returns a related value from another column.


-- Q34. What is HLOOKUP?
-- Answer:
-- HLOOKUP searches for a value horizontally in the first row
-- and returns a value from another row.


-- Q35. What is XLOOKUP?
-- Answer:
-- XLOOKUP searches for a value and returns the corresponding
-- value from another range.
--
-- Example:
-- =XLOOKUP(A2,Employee_ID,Salary)


-- Q36. What are the limitations of VLOOKUP?
-- Answer:
-- 1. It normally searches from left to right.
-- 2. It uses a column index number.
-- 3. Inserting columns can affect the column index.


-- Q37. What are the advantages of XLOOKUP?
-- Answer:
-- 1. It can search left or right.
-- 2. It does not require a column index number.
-- 3. It can provide a custom value when data is not found.


-- Q38. What is INDEX-MATCH?
-- Answer:
-- INDEX-MATCH is a combination used to perform flexible
-- lookups in Excel.


-- Q39. What happens when VLOOKUP cannot find a value?
-- Answer:
-- It returns #N/A.
-- We can handle it using IFERROR.
--
-- Example:
-- =IFERROR(VLOOKUP(A2,D:E,2,FALSE),"Not Found")



-- ============================================================
-- SECTION 6: DATA CLEANING
-- ============================================================

-- Q40. How do you handle missing values?
-- Answer:
-- First identify missing values.
-- Then decide whether to replace, remove, or label them
-- based on the business requirement.


-- Q41. How do you find duplicate records?
-- Answer:
-- Use:
-- Conditional Formatting -> Duplicate Values
-- OR
-- Data -> Remove Duplicates


-- Q42. How do you remove extra spaces?
-- Answer:
-- Use the TRIM function.


-- Q43. How do you convert text into numbers?
-- Answer:
-- We can use VALUE(), Text to Columns,
-- or multiply the value by 1.


-- Q44. How do you standardize inconsistent values?
-- Answer:
-- Use TRIM, PROPER, UPPER, LOWER,
-- Find & Replace, or Power Query.
--
-- Example:
-- male
-- Male
-- M
--
-- Can be standardized to:
-- Male


-- Q45. How do you split one column into multiple columns?
-- Answer:
-- Use Text to Columns or Power Query.


-- Q46. How do you identify incorrect data?
-- Answer:
-- Check data types, duplicates, blanks, outliers,
-- inconsistent values, and invalid values.



-- ============================================================
-- SECTION 7: PIVOT TABLE
-- ============================================================

-- Q47. What is a Pivot Table?
-- Answer:
-- A Pivot Table is used to quickly summarize and analyze
-- large amounts of data.


-- Q48. Why do Data Analysts use Pivot Tables?
-- Answer:
-- Pivot Tables help summarize data by:
-- Product
-- Category
-- City
-- Region
-- Month
-- Customer
-- etc.


-- Q49. What are the main areas of a Pivot Table?
-- Answer:
-- 1. Rows
-- 2. Columns
-- 3. Values
-- 4. Filters


-- Q50. How do you calculate total sales by city?
-- Answer:
-- Create Pivot Table.
-- Put City in Rows.
-- Put Sales in Values.
-- Select Sum of Sales.


-- Q51. How do you calculate average sales by region?
-- Answer:
-- Put Region in Rows.
-- Put Sales in Values.
-- Change Value Field Settings to Average.


-- Q52. How do you find Top 10 products?
-- Answer:
-- Create Pivot Table.
-- Put Product in Rows.
-- Put Sales in Values.
-- Apply Value Filters -> Top 10.


-- Q53. What is a Pivot Chart?
-- Answer:
-- A Pivot Chart is a chart connected to a Pivot Table.


-- Q54. What is a Slicer?
-- Answer:
-- A Slicer is a visual filter used to interactively
-- filter Pivot Tables and Pivot Charts.


-- Q55. What is a Timeline?
-- Answer:
-- A Timeline is a visual date filter used with Pivot Tables.



-- ============================================================
-- SECTION 8: POWER QUERY
-- ============================================================

-- Q56. What is Power Query?
-- Answer:
-- Power Query is an Excel tool used to import,
-- clean, transform, and combine data.


-- Q57. What is ETL?
-- Answer:
-- ETL means:
-- E = Extract
-- T = Transform
-- L = Load


-- Q58. Explain ETL.
-- Answer:
-- Extract -> Get data from different sources.
-- Transform -> Clean and modify the data.
-- Load -> Load the transformed data into Excel.


-- Q59. Why do we use Power Query?
-- Answer:
-- Power Query makes data cleaning and transformation
-- faster and repeatable.


-- Q60. What is Merge Query?
-- Answer:
-- Merge combines two tables using a common column.
-- It is similar to JOIN in SQL.


-- Q61. What is Append Query?
-- Answer:
-- Append combines rows from two or more tables.


-- Q62. Difference between Merge and Append?
-- Answer:
-- Merge -> Combines columns based on a matching key.
-- Append -> Combines rows from multiple tables.


-- Q63. Why use Power Query instead of manually cleaning data?
-- Answer:
-- Power Query saves time and makes the cleaning process
-- repeatable. When new data arrives, we can refresh the query.



-- ============================================================
-- SECTION 9: EXCEL DASHBOARD
-- ============================================================

-- Q64. What is an Excel Dashboard?
-- Answer:
-- An Excel Dashboard is a visual summary of important
-- business metrics using KPIs, charts, Pivot Tables,
-- and slicers.


-- Q65. What KPIs would you include in a Sales Dashboard?
-- Answer:
-- 1. Total Sales
-- 2. Total Orders
-- 3. Total Profit
-- 4. Profit Margin
-- 5. Average Order Value
-- 6. Quantity Sold


-- Q66. Which chart would you use for a monthly sales trend?
-- Answer:
-- Line Chart is generally suitable because it clearly
-- shows changes over time.


-- Q67. Which chart would you use to compare categories?
-- Answer:
-- Bar Chart or Column Chart.


-- Q68. How do you make an Excel Dashboard interactive?
-- Answer:
-- Use:
-- Pivot Tables
-- Pivot Charts
-- Slicers
-- Timelines


-- Q69. What makes a good dashboard?
-- Answer:
-- A good dashboard should be:
-- Simple
-- Easy to understand
-- Interactive
-- Well organized
-- Focused on important KPIs



-- ============================================================
-- SECTION 10: SCENARIO-BASED QUESTIONS
-- ============================================================

-- Q70. You receive a 100,000-row sales CSV. What will you do?
-- Answer:
-- First, I will import the data into Excel or Power Query.
-- Then I will check data types, duplicates, missing values,
-- and inconsistent values.
-- After cleaning, I will create Pivot Tables and KPIs.
-- Finally, I will create charts and an interactive dashboard.


-- Q71. How would you analyze monthly sales?
-- Answer:
-- I would create a Month column or group dates by month,
-- then create a Pivot Table with Month in Rows
-- and Sales in Values.
-- I would use a Line Chart to visualize the trend.


-- Q72. How would you find the best-selling product?
-- Answer:
-- I would create a Pivot Table with Product in Rows
-- and Quantity or Sales in Values.
-- Then I would sort the values in descending order.


-- Q73. How would you find the most profitable category?
-- Answer:
-- Create a Pivot Table with Category in Rows
-- and Profit in Values.
-- Sort Profit from highest to lowest.


-- Q74. How would you calculate cancellation rate?
-- Answer:
-- Cancellation Rate =
-- Cancelled Orders / Total Orders * 100


-- Q75. How would you calculate Average Order Value?
-- Answer:
-- Average Order Value =
-- Total Sales / Total Orders


-- Q76. How would you identify repeat customers?
-- Answer:
-- Count the number of orders for each Customer ID.
-- Customers with more than one order can be classified
-- as repeat customers, based on the project's definition.


-- Q77. How would you analyze sales by city?
-- Answer:
-- Create a Pivot Table.
-- Put City in Rows.
-- Put Sales in Values.
-- Add a Bar Chart for visualization.


-- Q78. How would you analyze sales by category?
-- Answer:
-- Create a Pivot Table with Category in Rows
-- and Sales in Values.
-- Then create a Column or Bar Chart.


-- Q79. How would you compare current month sales with
-- previous month sales?
-- Answer:
-- Calculate the current month and previous month sales,
-- then calculate:
--
-- Growth % =
-- (Current Month Sales - Previous Month Sales)
-- / Previous Month Sales * 100



-- ============================================================
-- SECTION 11: PROJECT INTERVIEW QUESTIONS
-- ============================================================

-- Q80. Explain your Excel project.
-- Answer:
-- I worked on a sales analytics project using Excel.
-- I cleaned and transformed the raw data, handled missing
-- and inconsistent values, and created Pivot Tables
-- to analyze sales, customers, products, and regions.
-- Finally, I created an interactive dashboard using KPIs,
-- charts, and slicers.


-- Q81. What was your role in the project?
-- Answer:
-- My role was to clean the data, perform analysis,
-- create KPIs and Pivot Tables, build the dashboard,
-- and identify useful business insights.


-- Q82. What challenges did you face?
-- Answer:
-- Some common challenges were missing values,
-- duplicate records, inconsistent data formats,
-- and incorrect data types.
-- I handled these using Excel functions and Power Query.


-- Q83. Why did you use Excel for the project?
-- Answer:
-- Excel is useful for data cleaning, quick analysis,
-- Pivot Tables, visualization, and dashboard creation.
-- It is also widely used for business reporting.


-- Q84. What insights did you get from your project?
-- Answer:
-- I analyzed sales trends, top-performing products,
-- customer behavior, category performance, and
-- regional performance.
-- The exact insights depend on the actual dataset.


-- Q85. If new data is added, how will you update your dashboard?
-- Answer:
-- If the dashboard is built using Power Query and Pivot Tables,
-- I can refresh the data and update the analysis instead
-- of rebuilding everything manually.



-- ============================================================
-- SECTION 12: VERY COMMON RAPID-FIRE QUESTIONS
-- ============================================================

-- Q86. VLOOKUP vs XLOOKUP?
-- Answer:
-- XLOOKUP is more flexible and can search both left and right.
-- VLOOKUP traditionally searches from the first column to the right.


-- Q87. COUNT vs COUNTA?
-- Answer:
-- COUNT counts numbers.
-- COUNTA counts non-empty cells.


-- Q88. SUMIF vs SUMIFS?
-- Answer:
-- SUMIF -> One condition.
-- SUMIFS -> Multiple conditions.


-- Q89. COUNTIF vs COUNTIFS?
-- Answer:
-- COUNTIF -> One condition.
-- COUNTIFS -> Multiple conditions.


-- Q90. Merge vs Append in Power Query?
-- Answer:
-- Merge -> Combines columns using a matching key.
-- Append -> Combines rows.


-- Q91. Formula vs Function?
-- Answer:
-- A formula is an expression created to calculate something.
-- A function is a predefined formula such as SUM(), IF(),
-- or VLOOKUP().


-- Q92. What is a named range?
-- Answer:
-- A named range is a custom name given to a cell or range
-- of cells to make formulas easier to understand.


-- Q93. What is Flash Fill?
-- Answer:
-- Flash Fill automatically recognizes a pattern and fills
-- the remaining data based on that pattern.


-- Q94. What is Goal Seek?
-- Answer:
-- Goal Seek finds the input value required to achieve
-- a specific result.


-- Q95. What is What-If Analysis?
-- Answer:
-- What-If Analysis is used to evaluate how changing
-- input values affects the result.



-- ============================================================
-- SECTION 13: FINAL INTERVIEW QUESTION
-- ============================================================

-- Q96. How would you explain your complete Excel
-- Data Analyst workflow?
--
-- Answer:
--
-- Raw Data
--     ↓
-- Data Import
--     ↓
-- Data Cleaning
--     ↓
-- Handle Missing Values
--     ↓
-- Remove Duplicates
--     ↓
-- Standardize Data
--     ↓
-- Data Transformation
--     ↓
-- Pivot Tables
--     ↓
-- KPI Calculation
--     ↓
-- Charts
--     ↓
-- Slicers / Timelines
--     ↓
-- Interactive Dashboard
--     ↓
-- Business Insights
--


-- ============================================================
-- QUICK REVISION
-- ============================================================

-- IMPORTANT EXCEL TOPICS TO PREPARE:
--
-- 1. SUM
-- 2. SUMIF
-- 3. SUMIFS
-- 4. COUNT
-- 5. COUNTA
-- 6. COUNTIF
-- 7. COUNTIFS
-- 8. AVERAGE
-- 9. IF
-- 10. IFERROR
-- 11. LEFT
-- 12. RIGHT
-- 13. MID
-- 14. TRIM
-- 15. PROPER
-- 16. VLOOKUP
-- 17. XLOOKUP
-- 18. INDEX-MATCH
-- 19. Conditional Formatting
-- 20. Data Validation
-- 21. Data Cleaning
-- 22. Pivot Table
-- 23. Pivot Chart
-- 24. Slicers
-- 25. Timeline
-- 26. Power Query
-- 27. Merge
-- 28. Append
-- 29. Dashboard
-- 30. Business Insights
--
-- ============================================================
-- END OF EXCEL INTERVIEW QUESTIONS
-- ============================================================