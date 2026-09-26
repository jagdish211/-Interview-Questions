-- ============================================================
-- MATPLOTLIB INTERVIEW QUESTIONS & ANSWERS
-- FOR DATA ANALYST / DATA SCIENTIST INTERVIEWS
-- 100 INTERVIEW QUESTIONS WITH PRACTICAL EXAMPLES & DIAGRAMS
-- ============================================================

-- ============================================================
-- SECTION 1: MATPLOTLIB BASICS
-- ============================================================

-- Q1. What is Matplotlib?
-- ANSWER:
-- Matplotlib is a Python library used for creating static,
-- animated, and interactive visualizations.
-- It is widely used for data analysis and exploratory data analysis.
-- Example:
-- import matplotlib.pyplot as plt

-- ============================================================

-- Q2. Why is Matplotlib used in Data Science?
-- ANSWER:
-- Matplotlib is used to visualize data and identify patterns,
-- trends, distributions, relationships, and outliers.
-- Common charts include:
-- 1. Line chart
-- 2. Bar chart
-- 3. Histogram
-- 4. Scatter plot
-- 5. Pie chart
-- 6. Box plot
-- Data
-- │
-- ▼
-- Matplotlib
-- │
-- ├── Trends
-- ├── Patterns
-- ├── Distributions
-- └── Relationships

-- ============================================================

-- Q3. How do you import Matplotlib?
-- ANSWER:
-- The commonly used import is:
-- import matplotlib.pyplot as plt

-- ============================================================

-- Q4. What is pyplot?
-- ANSWER:
-- pyplot is a Matplotlib module that provides functions for
-- creating and controlling plots.
-- Example:
-- import matplotlib.pyplot as plt
-- plt.plot([1, 2, 3], [10, 20, 30])
-- plt.show()

-- ============================================================

-- Q5. What does plt.show() do?
-- ANSWER:
-- plt.show() displays the current figure.
-- Example:
-- plt.plot([1, 2, 3])
-- plt.show()
-- Python code
-- │
-- ▼
-- plt.plot()
-- │
-- ▼
-- Figure
-- │
-- ▼
-- plt.show()
-- │
-- ▼
-- Display

-- ============================================================

-- Q6. What is a Figure in Matplotlib?
-- ANSWER:
-- A Figure is the overall container that holds one or more
-- plots or Axes.
-- Diagram:
-- Figure
-- ┌──────────────────────────────┐
-- │ │
-- │ Axes │
-- │ ┌────────────┐ │
-- │ │ Plot │ │
-- │ └────────────┘ │
-- │ │
-- └──────────────────────────────┘

-- ============================================================

-- Q7. What is an Axes in Matplotlib?
-- ANSWER:
-- An Axes is the actual plotting area where data is displayed.
-- It contains the x-axis, y-axis, labels, title, and plotted data.
-- Figure
-- │
-- └── Axes
-- ├── X-axis
-- ├── Y-axis
-- ├── Title
-- └── Plot

-- ============================================================

-- Q8. What is the difference between Figure and Axes?
-- ANSWER:
-- Figure is the complete canvas.
-- Axes is an individual plotting area inside the Figure.
-- Comparison:
-- Figure
-- │
-- ├── Axes 1 → Plot
-- ├── Axes 2 → Plot
-- └── Axes 3 → Plot

-- ============================================================

-- Q9. What is the basic structure of a Matplotlib plot?
-- ANSWER:
-- A basic plot usually follows:
-- import matplotlib.pyplot as plt
-- plt.plot(x, y)
-- plt.xlabel("X")
-- plt.ylabel("Y")
-- plt.title("My Plot")
-- plt.show()
-- Data
-- │
-- ▼
-- plot()
-- │
-- ▼
-- Labels + Title
-- │
-- ▼
-- show()

-- ============================================================

-- Q10. What is the purpose of visualization in data analysis?
-- ANSWER:
-- Visualization converts numerical data into graphical form.
-- It helps analysts understand trends, comparisons,
-- distributions, relationships, and unusual observations.

-- ============================================================

-- ============================================================
-- SECTION 2: LINE PLOTS
-- ============================================================

-- Q11. How do you create a line plot?
-- ANSWER:
-- Use plt.plot().
-- Example:
-- import matplotlib.pyplot as plt
-- x = [1, 2, 3, 4]
-- y = [10, 20, 15, 30]
-- plt.plot(x, y)
-- plt.show()
-- Output:
-- A line connecting the points.

-- ============================================================

-- Q12. When should you use a line chart?
-- ANSWER:
-- Line charts are useful for showing trends over an ordered
-- variable, especially time.
-- Example:
-- Monthly Sales → Line Chart
-- Jan ── Feb ── Mar ── Apr
-- │ │ │ │
-- 20 30 25 40

-- ============================================================

-- Q13. How do you change the color of a line?
-- ANSWER:
-- Use the color parameter.
-- Example:
-- plt.plot(x, y, color="red")

-- ============================================================

-- Q14. How do you change the line style?
-- ANSWER:
-- Use the linestyle parameter.
-- Example:
-- plt.plot(x, y, linestyle="--")
-- Common styles:
-- "-" → Solid
-- "--" → Dashed
-- ":" → Dotted
-- "-." → Dash-dot

-- ============================================================

-- Q15. How do you change line width?
-- ANSWER:
-- Use linewidth.
-- Example:
-- plt.plot(x, y, linewidth=3)

-- ============================================================

-- Q16. How do you add markers to a line plot?
-- ANSWER:
-- Use the marker parameter.
-- Example:
-- plt.plot(x, y, marker="o")
-- Diagram:
-- ●────●────●────●
-- 1 2 3 4

-- ============================================================

-- Q17. How do you combine line style, marker, and color?
-- ANSWER:
-- Example:
-- plt.plot(
-- x,
-- y,
-- color="blue",
-- linestyle="--",
-- marker="o"
-- )

-- ============================================================

-- Q18. How do you plot multiple lines?
-- ANSWER:
-- Call plt.plot() multiple times.
-- Example:
-- plt.plot(x, sales)
-- plt.plot(x, profit)
-- plt.show()
-- Diagram:
-- Sales ─────────────
-- Profit ─────────────
-- X-axis ─────────────

-- ============================================================

-- Q19. How do you add a legend?
-- ANSWER:
-- Use label inside plot() and plt.legend().
-- Example:
-- plt.plot(x, sales, label="Sales")
-- plt.plot(x, profit, label="Profit")
-- plt.legend()

-- ============================================================

-- Q20. What is the difference between plt.plot() and plt.scatter()?
-- ANSWER:
-- plot() is commonly used for lines and trends.
-- scatter() is used to show individual observations.
-- Comparison:
-- plot()
-- ●────●────●────●
-- Shows connected trend.
-- scatter()
-- ● ● ●
-- ● ●
-- Shows individual points.

-- ============================================================

-- ============================================================
-- SECTION 3: BAR CHARTS
-- ============================================================

-- Q21. How do you create a bar chart?
-- ANSWER:
-- Use plt.bar().
-- Example:
-- categories = ["A", "B", "C"]
-- values = [10, 20, 15]
-- plt.bar(categories, values)
-- plt.show()

-- ============================================================

-- Q22. When should you use a bar chart?
-- ANSWER:
-- Bar charts are useful for comparing values across
-- discrete categories.
-- Example:
-- Product A ████████
-- Product B █████████████
-- Product C ██████████

-- ============================================================

-- Q23. How do you create a horizontal bar chart?
-- ANSWER:
-- Use plt.barh().
-- Example:
-- plt.barh(categories, values)

-- ============================================================

-- Q24. What is the difference between bar() and barh()?
-- ANSWER:
-- bar() creates vertical bars.
-- barh() creates horizontal bars.
-- Comparison:
-- bar():
-- A │████
-- B │████████
-- C │██████
-- barh():
-- A █████
-- B █████████
-- C ██████

-- ============================================================

-- Q25. How do you change the width of bars?
-- ANSWER:
-- Use the width parameter.
-- Example:
-- plt.bar(categories, values, width=0.5)

-- ============================================================

-- Q26. How do you create a grouped bar chart?
-- ANSWER:
-- Create multiple bar series with different x positions.
-- Example:
-- import numpy as np
-- x = np.arange(3)
-- sales = [20, 30, 40]
-- profit = [10, 15, 25]
-- plt.bar(x - 0.2, sales, width=0.4, label="Sales")
-- plt.bar(x + 0.2, profit, width=0.4, label="Profit")
-- plt.legend()
-- Category
-- │
-- ├── Sales █████
-- └── Profit ███

-- ============================================================

-- Q27. What is a stacked bar chart?
-- ANSWER:
-- A stacked bar chart places multiple values on top of each
-- other within the same category.
-- Example:
-- Category A ┌───────┐
-- │Profit │
-- ├───────┤
-- │Sales │
-- └───────┘

-- ============================================================

-- Q28. How do you create a stacked bar chart?
-- ANSWER:
-- Use the bottom parameter.
-- Example:
-- plt.bar(x, sales, label="Sales")
-- plt.bar(x, profit, bottom=sales, label="Profit")

-- ============================================================

-- Q29. How do you add values on top of bars?
-- ANSWER:
-- You can use bar containers with ax.bar_label().
-- Example:
-- fig, ax = plt.subplots()
-- bars = ax.bar(categories, values)
-- ax.bar_label(bars)

-- ============================================================

-- Q30. What is the difference between grouped and stacked bars?
-- ANSWER:
-- Grouped bars place values side by side.
-- Stacked bars place values on top of each other.
-- Grouped:
-- A → ███ ███
-- Stacked:
-- A → █████
-- █████

-- ============================================================

-- ============================================================
-- SECTION 4: SCATTER PLOTS
-- ============================================================

-- Q31. What is a scatter plot?
-- ANSWER:
-- A scatter plot displays individual observations as points.
-- It is commonly used to study relationships between two
-- numerical variables.

-- ============================================================

-- Q32. How do you create a scatter plot?
-- ANSWER:
-- Use plt.scatter().
-- Example:
-- x = [1, 2, 3, 4, 5]
-- y = [2, 4, 5, 4, 7]
-- plt.scatter(x, y)
-- plt.show()

-- ============================================================

-- Q33. When should you use a scatter plot?
-- ANSWER:
-- Use a scatter plot when you want to investigate the
-- relationship between two numerical variables.
-- Height
-- │ ●
-- │ ●
-- │ ●
-- │●
-- └──────────── Weight

-- ============================================================

-- Q34. How do you change the size of scatter points?
-- ANSWER:
-- Use the s parameter.
-- Example:
-- plt.scatter(x, y, s=100)

-- ============================================================

-- Q35. How do you change scatter point transparency?
-- ANSWER:
-- Use alpha.
-- Example:
-- plt.scatter(x, y, alpha=0.5)
-- alpha:
-- 0 → Transparent
-- 1 → Fully opaque

-- ============================================================

-- Q36. How can color represent a third variable in a scatter plot?
-- ANSWER:
-- Pass a numerical or categorical grouping to the c parameter
-- and use a colormap when appropriate.
-- Example:
-- plt.scatter(x, y, c=values, cmap="viridis")
-- X ────────────────
-- Y ────────────────
-- Color → Third variable

-- ============================================================

-- Q37. What is a bubble chart?
-- ANSWER:
-- A bubble chart is a scatter plot where point size represents
-- an additional variable.
-- X → Variable 1
-- Y → Variable 2
-- Size → Variable 3

-- ============================================================

-- Q38. How can you identify outliers using a scatter plot?
-- ANSWER:
-- Look for observations that are far away from the main
-- concentration of points.
-- Main data:
-- ● ● ● ● ●
-- ● ● ● ●
-- Outlier:
-- ●

-- ============================================================

-- Q39. What is correlation versus a scatter plot?
-- ANSWER:
-- A scatter plot is a visual representation.
-- Correlation is a numerical measure of linear association.
-- Scatter Plot
-- │
-- ▼
-- Visual relationship
-- Correlation
-- │
-- ▼
-- Numerical relationship

-- ============================================================

-- Q40. Can a scatter plot show categorical variables?
-- ANSWER:
-- Scatter plots are primarily designed for numerical axes,
-- but categorical values can be encoded or positioned numerically.
-- For simple categorical comparisons, bar or box plots are often
-- more appropriate.

-- ============================================================

-- ============================================================
-- SECTION 5: HISTOGRAMS AND DISTRIBUTIONS
-- ============================================================

-- Q41. What is a histogram?
-- ANSWER:
-- A histogram displays the distribution of numerical data by
-- grouping values into intervals called bins.

-- ============================================================

-- Q42. How do you create a histogram?
-- ANSWER:
-- Use plt.hist().
-- Example:
-- data = [10, 12, 15, 15, 18, 20, 22]
-- plt.hist(data)
-- plt.show()

-- ============================================================

-- Q43. What is a bin in a histogram?
-- ANSWER:
-- A bin is an interval used to group numerical observations.
-- Example:
-- 0-10 → Bin 1
-- 10-20 → Bin 2
-- 20-30 → Bin 3
-- Data
-- │
-- ▼
-- Bins
-- │
-- ▼
-- Frequency

-- ============================================================

-- Q44. How do you change the number of bins?
-- ANSWER:
-- Use the bins parameter.
-- Example:
-- plt.hist(data, bins=10)

-- ============================================================

-- Q45. What happens if you use too few bins?
-- ANSWER:
-- Important distribution details may be hidden because many
-- observations are grouped together.
-- Few bins
-- ┌───────┐
-- │ │
-- │ █████ │
-- └───────┘
-- Less detail.

-- ============================================================

-- Q46. What happens if you use too many bins?
-- ANSWER:
-- The histogram can become noisy and may make the distribution
-- harder to interpret.

-- ============================================================

-- Q47. What is the difference between histogram and bar chart?
-- ANSWER:
-- Histogram → distribution of numerical data.
-- Bar chart → comparison between categories.
-- Comparison:
-- Histogram:
-- Numerical → Bins → Frequency
-- Bar Chart:
-- Categories → Bars → Comparison

-- ============================================================

-- Q48. How do you normalize a histogram?
-- ANSWER:
-- Use density=True.
-- Example:
-- plt.hist(data, bins=10, density=True)
-- The histogram is scaled so that the area represents
-- probability density.

-- ============================================================

-- Q49. How do you create a cumulative histogram?
-- ANSWER:
-- Use cumulative=True.
-- Example:
-- plt.hist(data, cumulative=True)

-- ============================================================

-- Q50. What can a histogram tell you?
-- ANSWER:
-- It can help identify:
-- 1. Center
-- 2. Spread
-- 3. Skewness
-- 4. Possible outliers
-- 5. Multiple peaks
-- 6. Overall distribution shape
-- Data
-- │
-- ▼
-- Histogram
-- │
-- ├── Center
-- ├── Spread
-- ├── Skewness
-- └── Outliers

-- ============================================================

-- ============================================================
-- SECTION 6: LABELS, TITLES AND LEGENDS
-- ============================================================

-- Q51. How do you add an X-axis label?
-- ANSWER:
-- Use plt.xlabel().
-- Example:
-- plt.xlabel("Month")

-- ============================================================

-- Q52. How do you add a Y-axis label?
-- ANSWER:
-- Use plt.ylabel().
-- Example:
-- plt.ylabel("Sales")

-- ============================================================

-- Q53. How do you add a title?
-- ANSWER:
-- Use plt.title().
-- Example:
-- plt.title("Monthly Sales")

-- ============================================================

-- Q54. How do you add a legend?
-- ANSWER:
-- Use label in the plotting function and call plt.legend().
-- Example:
-- plt.plot(x, sales, label="Sales")
-- plt.legend()

-- ============================================================

-- Q55. Why is a legend important?
-- ANSWER:
-- A legend identifies different plotted data series.
-- Sales ─────────
-- Profit ─────────
-- Legend

-- ============================================================

-- Q56. How do you add grid lines?
-- ANSWER:
-- Use:
-- plt.grid(True)

-- ============================================================

-- Q57. How do you set the X-axis limits?
-- ANSWER:
-- Use plt.xlim().
-- Example:
-- plt.xlim(0, 10)

-- ============================================================

-- Q58. How do you set the Y-axis limits?
-- ANSWER:
-- Use plt.ylim().
-- Example:
-- plt.ylim(0, 100)

-- ============================================================

-- Q59. How do you rotate X-axis labels?
-- ANSWER:
-- Use plt.xticks(rotation=45).
-- Example:
-- plt.xticks(rotation=45)
-- This is useful when category names are long.

-- ============================================================

-- Q60. How do you customize the font size of labels?
-- ANSWER:
-- Use the fontsize parameter.
-- Example:
-- plt.xlabel("Sales", fontsize=12)
-- plt.title("Sales Analysis", fontsize=16)

-- ============================================================

-- ============================================================
-- SECTION 7: SUBPLOTS AND MULTIPLE AXES
-- ============================================================

-- Q61. What is a subplot?
-- ANSWER:
-- A subplot is an individual plotting area within a Figure.
-- Multiple plots can be arranged in rows and columns.

-- ============================================================

-- Q62. How do you create subplots?
-- ANSWER:
-- Use plt.subplots().
-- Example:
-- fig, ax = plt.subplots(2, 2)
-- Diagram:
-- ┌────────────┬────────────┐
-- │ Plot 1 │ Plot 2 │
-- ├────────────┼────────────┤
-- │ Plot 3 │ Plot 4 │
-- └────────────┴────────────┘

-- ============================================================

-- Q63. What does plt.subplots(2, 2) create?
-- ANSWER:
-- It creates a Figure containing 2 rows and 2 columns,
-- resulting in 4 Axes.
-- 2 × 2 = 4 plots

-- ============================================================

-- Q64. What is the difference between plt.subplot() and plt.subplots()?
-- ANSWER:
-- plt.subplot() creates or activates a subplot using a
-- single plotting command.
-- plt.subplots() creates the Figure and Axes objects together
-- and is generally convenient for object-oriented plotting.
-- Comparison:
-- subplot()
-- └── Create/select plotting position
-- subplots()
-- └── Figure + Axes objects

-- ============================================================

-- Q65. How do you create two plots side by side?
-- ANSWER:
-- Example:
-- fig, ax = plt.subplots(1, 2)
-- Diagram:
-- ┌─────────────┬─────────────┐
-- │ Plot 1 │ Plot 2 │
-- └─────────────┴─────────────┘

-- ============================================================

-- Q66. How do you create plots vertically?
-- ANSWER:
-- Use one column and multiple rows.
-- Example:
-- fig, ax = plt.subplots(2, 1)
-- Diagram:
-- ┌─────────────┐
-- │ Plot 1 │
-- ├─────────────┤
-- │ Plot 2 │
-- └─────────────┘

-- ============================================================

-- Q67. How do you access individual Axes from subplots?
-- ANSWER:
-- Example:
-- fig, ax = plt.subplots(2, 2)
-- ax[0, 0].plot(x, y)
-- ax[0, 1].bar(x, y)

-- ============================================================

-- Q68. What is figsize?
-- ANSWER:
-- figsize controls the width and height of a Figure
-- in inches.
-- Example:
-- plt.figure(figsize=(10, 6))

-- ============================================================

-- Q69. What is dpi in Matplotlib?
-- ANSWER:
-- DPI means dots per inch.
-- It controls the resolution of a figure, especially when
-- displayed or saved.
-- Example:
-- plt.figure(figsize=(8, 5), dpi=120)

-- ============================================================

-- Q70. How do you automatically adjust subplot spacing?
-- ANSWER:
-- Use plt.tight_layout().
-- Example:
-- plt.tight_layout()
-- Diagram:
-- Before:
-- Label overlaps
-- ↓
-- tight_layout()
-- ↓
-- Better spacing

-- ============================================================

-- ============================================================
-- SECTION 8: TICKS, ANNOTATIONS AND STYLING
-- ============================================================

-- Q71. What are ticks?
-- ANSWER:
-- Ticks are the marks and labels shown along the axes.
-- X-axis:
-- ──┬────┬────┬────┬──
-- 0 1 2 3

-- ============================================================

-- Q72. How do you customize X-axis tick labels?
-- ANSWER:
-- Use plt.xticks().
-- Example:
-- plt.xticks([0, 1, 2], ["A", "B", "C"])

-- ============================================================

-- Q73. How do you customize Y-axis tick labels?
-- ANSWER:
-- Use plt.yticks().
-- Example:
-- plt.yticks([0, 50, 100])

-- ============================================================

-- Q74. What is annotation in Matplotlib?
-- ANSWER:
-- Annotation adds explanatory text to a specific point
-- or location on a plot.
-- Example:
-- plt.annotate("Maximum", xy=(3, 50))
-- Diagram:
-- ● Maximum
-- ↑
-- │
-- ────────────┼──────────

-- ============================================================

-- Q75. How do you annotate a point with an arrow?
-- ANSWER:
-- Use annotate() with xytext and arrowprops.
-- Example:
-- plt.annotate(
-- "Peak",
-- xy=(3, 50),
-- xytext=(2, 70),
-- arrowprops={"arrowstyle": "->"}
-- )

-- ============================================================

-- Q76. What is alpha in Matplotlib?
-- ANSWER:
-- alpha controls transparency.
-- alpha=0 → Fully transparent
-- alpha=1 → Fully opaque

-- ============================================================

-- Q77. What is a colormap?
-- ANSWER:
-- A colormap maps numerical values to colors.
-- It is useful when color represents a variable.
-- Value
-- │
-- ▼
-- Colormap
-- │
-- ▼
-- Color

-- ============================================================

-- Q78. What is cmap?
-- ANSWER:
-- cmap specifies the colormap used for mapping numerical
-- values to colors.
-- Example:
-- plt.scatter(x, y, c=z, cmap="viridis")

-- ============================================================

-- Q79. How do you add a reference line?
-- ANSWER:
-- Use axhline() for a horizontal line and axvline()
-- for a vertical line.
-- Example:
-- plt.axhline(y=50, linestyle="--")
-- plt.axvline(x=10, linestyle="--")
-- Diagram:
-- │
-- │ axvline
-- ────────────┼────────────
-- axhline

-- ============================================================

-- Q80. What is the difference between axhline() and axvline()?
-- ANSWER:
-- axhline() creates a horizontal reference line.
-- axvline() creates a vertical reference line.
-- Comparison:
-- axhline()
-- ─────────────────────
-- axvline()
-- │
-- │
-- │

-- ============================================================

-- ============================================================
-- SECTION 9: PIE, BOX PLOTS AND SPECIAL VISUALIZATIONS
-- ============================================================

-- Q81. How do you create a pie chart?
-- ANSWER:
-- Use plt.pie().
-- Example:
-- labels = ["A", "B", "C"]
-- values = [40, 35, 25]
-- plt.pie(values, labels=labels)
-- plt.show()

-- ============================================================

-- Q82. When should you use a pie chart?
-- ANSWER:
-- A pie chart can show parts of a whole when there are
-- relatively few categories.
-- Whole
-- ┌─────────────────┐
-- │ A │ B │ C │
-- └─────────────────┘
-- Parts of one whole

-- ============================================================

-- Q83. How do you show percentages in a pie chart?
-- ANSWER:
-- Use autopct.
-- Example:
-- plt.pie(
-- values,
-- labels=labels,
-- autopct="%1.1f%%"
-- )

-- ============================================================

-- Q84. What is a box plot?
-- ANSWER:
-- A box plot summarizes the distribution of numerical data
-- using quartiles and can help identify potential outliers.
-- Diagram:
-- ● Outlier
-- │
-- ────┤
-- │
-- ┌────┴────┐
-- │ Box │
-- ├────┬────┤
-- │
-- ────┤

-- ============================================================

-- Q85. How do you create a box plot?
-- ANSWER:
-- Use plt.boxplot().
-- Example:
-- plt.boxplot(data)
-- plt.show()

-- ============================================================

-- Q86. What does a box plot show?
-- ANSWER:
-- It commonly shows:
-- 1. Minimum/non-outlier lower extent
-- 2. First quartile (Q1)
-- 3. Median
-- 4. Third quartile (Q3)
-- 5. Maximum/non-outlier upper extent
-- 6. Potential outliers
-- Diagram:
-- Minimum ──┬── Q1 ┌─────────┐ Q3 ──┬── Maximum
-- │ │ Median │ │
-- │ └─────────┘ │
-- ● ●

-- ============================================================

-- Q87. What is IQR in a box plot?
-- ANSWER:
-- IQR means Interquartile Range.
-- IQR = Q3 - Q1
-- It represents the spread of the middle 50% of the data.
-- Q1 ┌─────────────────┐ Q3
-- │ Middle 50% │
-- └─────────────────┘
-- ←── IQR ──→

-- ============================================================

-- Q88. How can a box plot help identify outliers?
-- ANSWER:
-- A common box-plot rule identifies potential outliers beyond
-- 1.5 × IQR from Q1 or Q3.
-- Lower bound = Q1 - 1.5 × IQR
-- Upper bound = Q3 + 1.5 × IQR

-- ============================================================

-- Q89. What is a stem plot?
-- ANSWER:
-- A stem plot displays data points using vertical or horizontal
-- stems and markers.
-- It can be useful for visualizing discrete numerical data.

-- ============================================================

-- Q90. What is imshow() used for?
-- ANSWER:
-- imshow() displays an array as an image.
-- It is commonly useful for matrix-like data and image data.
-- Example:
-- plt.imshow(matrix)
-- plt.show()
-- Matrix
-- ┌───┬───┬───┐
-- │ 1 │ 2 │ 3 │
-- ├───┼───┼───┤
-- │ 4 │ 5 │ 6 │
-- └───┴───┴───┘
-- │
-- ▼
-- imshow()
-- │
-- ▼
-- Image

-- ============================================================

-- ============================================================
-- SECTION 10: SAVING, OBJECT-ORIENTED API AND ADVANCED CONCEPTS
-- ============================================================

-- Q91. How do you save a Matplotlib figure?
-- ANSWER:
-- Use savefig().
-- Example:
-- plt.plot(x, y)
-- plt.savefig("sales.png")
-- Plot
-- │
-- ▼
-- savefig()
-- │
-- ▼
-- sales.png

-- ============================================================

-- Q92. What file formats can Matplotlib save?
-- ANSWER:
-- Common formats include:
-- PNG
-- JPG/JPEG
-- PDF
-- SVG
-- EPS
-- The appropriate format depends on whether the output is
-- intended for screens, reports, or scalable graphics.

-- ============================================================

-- Q93. What is the object-oriented approach in Matplotlib?
-- ANSWER:
-- The object-oriented approach explicitly creates Figure
-- and Axes objects and then calls methods on them.
-- Example:
-- fig, ax = plt.subplots()
-- ax.plot(x, y)
-- ax.set_title("Sales")
-- plt.show()
-- Figure
-- │
-- └── Axes
-- │
-- └── plot()

-- ============================================================

-- Q94. What is the difference between pyplot style and
-- object-oriented style?
-- ANSWER:
-- pyplot style uses functions such as plt.plot() and plt.title().
-- Object-oriented style uses Axes methods such as:
-- ax.plot()
-- ax.set_title()
-- ax.set_xlabel()
-- Comparison:
-- Pyplot
-- plt.plot()
-- plt.title()
-- plt.xlabel()
-- Object-Oriented
-- ax.plot()
-- ax.set_title()
-- ax.set_xlabel()

-- ============================================================

-- Q95. Why is the object-oriented API useful?
-- ANSWER:
-- It provides clearer control when creating multiple plots,
-- complex figures, and reusable visualization code.
-- Figure
-- │
-- ├── Axes 1
-- ├── Axes 2
-- └── Axes 3
-- Each Axes can be controlled independently.

-- ============================================================

-- Q96. What is sharex or sharey in subplots?
-- ANSWER:
-- sharex or sharey allows multiple Axes to share the same
-- X-axis or Y-axis.
-- Example:
-- fig, ax = plt.subplots(2, 1, sharex=True)
-- Diagram:
-- ┌───────────────┐
-- │ Plot 1 │
-- ├───────────────┤
-- │ Plot 2 │
-- └───────────────┘
-- │
-- Same X-axis

-- ============================================================

-- Q97. What is twin axis in Matplotlib?
-- ANSWER:
-- twinx() creates a second Y-axis sharing the same X-axis.
-- Example:
-- fig, ax1 = plt.subplots()
-- ax2 = ax1.twinx()
-- Diagram:
-- Y1 Y2
-- │ │
-- │ Plot │
-- │ │
-- └────────┘
-- X

-- ============================================================

-- Q98. What is the purpose of plt.style?
-- ANSWER:
-- Matplotlib styles can provide predefined visual settings
-- for plots.
-- Example:
-- plt.style.use("ggplot")
-- A style can change properties such as:
-- lines
-- fonts
-- grid appearance
-- backgrounds

-- ============================================================

-- Q99. How do you create a professional Data Analyst visualization?
-- ANSWER:
-- A good visualization should:
-- 1. Use the appropriate chart type.
-- 2. Have a clear title.
-- 3. Label axes.
-- 4. Use readable scales.
-- 5. Avoid unnecessary decoration.
-- 6. Use legends when needed.
-- 7. Highlight important information.
-- 8. Keep labels readable.
-- 9. Avoid misleading axes.
-- 10. Maintain consistency.
-- Data
-- │
-- ▼
-- Correct Chart
-- │
-- ▼
-- Clear Labels
-- │
-- ▼
-- Readable Design
-- │
-- ▼
-- Business Insight

-- ============================================================

-- Q100. How would you explain your Matplotlib knowledge in an interview?
-- ANSWER:
-- Interview-ready answer:
-- "I use Matplotlib mainly for data visualization and exploratory
-- data analysis. I am comfortable creating line charts, bar charts,
-- histograms, scatter plots, box plots, and pie charts. I can
-- customize titles, labels, legends, colors, markers, grid lines,
-- axes, subplots, and figure size. I also understand the Figure
-- and Axes concepts and can use the object-oriented API for more
-- complex visualizations. I can save visualizations and use them
-- to identify trends, distributions, relationships, and outliers."
-- Data
-- │
-- ▼
-- Analysis
-- │
-- ▼
-- Matplotlib
-- │
-- ├── Trends
-- ├── Comparison
-- ├── Distribution
-- ├── Relationship
-- └── Outliers
-- │
-- ▼
-- Business Insight

-- ============================================================

-- ============================================================
-- QUICK REVISION
-- ============================================================

-- MATPLOTLIB
-- │
-- ├── Basics
-- │ ├── Figure
-- │ ├── Axes
-- │ └── pyplot
-- │
-- ├── Basic Charts
-- │ ├── plot()
-- │ ├── bar()
-- │ ├── barh()
-- │ ├── scatter()
-- │ ├── hist()
-- │ ├── pie()
-- │ └── boxplot()
-- │
-- ├── Customization
-- │ ├── title
-- │ ├── xlabel
-- │ ├── ylabel
-- │ ├── legend
-- │ ├── grid
-- │ ├── xlim
-- │ ├── ylim
-- │ ├── ticks
-- │ ├── marker
-- │ ├── linestyle
-- │ ├── linewidth
-- │ └── alpha
-- │
-- ├── Multiple Plots
-- │ ├── subplot()
-- │ ├── subplots()
-- │ ├── figsize
-- │ ├── dpi
-- │ └── tight_layout()
-- │
-- ├── Advanced
-- │ ├── annotate()
-- │ ├── axhline()
-- │ ├── axvline()
-- │ ├── colormap
-- │ ├── imshow()
-- │ ├── twinx()
-- │ └── sharex/sharey
-- │
-- └── Output
-- └── savefig()

-- ============================================================

-- ============================================================
-- MOST IMPORTANT QUESTIONS TO MEMORIZE
-- ============================================================

-- 1. What is Matplotlib?
-- 2. Why is Matplotlib used in Data Science?
-- 3. How do you import Matplotlib?
-- 4. What is pyplot?
-- 5. What does plt.show() do?
-- 6. Figure vs Axes
-- 7. How to create a line plot?
-- 8. When to use a line chart?
-- 9. plot() vs scatter()
-- 10. How to create a bar chart?
-- 11. bar() vs barh()
-- 12. Grouped vs stacked bar chart
-- 13. What is a scatter plot?
-- 14. How to identify outliers using scatter plots?
-- 15. What is a histogram?
-- 16. What is a bin?
-- 17. Histogram vs bar chart
-- 18. How to change number of bins?
-- 19. How to add title and axis labels?
-- 20. How to add a legend?
-- 21. How to add grid lines?
-- 22. How to set axis limits?
-- 23. What is alpha?
-- 24. What is a colormap?
-- 25. What is cmap?
-- 26. What is a subplot?
-- 27. subplot() vs subplots()
-- 28. How to create multiple plots?
-- 29. What is figsize?
-- 30. What is dpi?
-- 31. What is tight_layout()?
-- 32. What are ticks?
-- 33. What is annotation?
-- 34. axhline() vs axvline()
-- 35. What is a pie chart?
-- 36. What is a box plot?
-- 37. What is IQR?
-- 38. How are outliers identified in box plots?
-- 39. What is imshow()?
-- 40. How do you save a figure?
-- 41. What is the object-oriented API?
-- 42. pyplot style vs object-oriented style
-- 43. Why use the object-oriented API?
-- 44. What is sharex/sharey?
-- 45. What is twinx()?
-- 46. How do you create professional visualizations?

-- ============================================================
-- END OF MATPLOTLIB INTERVIEW QUESTIONS & ANSWERS
-- ============================================================