-- ============================================================
-- SEABORN INTERVIEW QUESTIONS & ANSWERS
-- FOR DATA ANALYST / DATA SCIENTIST INTERVIEWS
-- ============================================================

-- ============================================================
-- SECTION 1: SEABORN BASICS
-- ============================================================

-- Q1. What is Seaborn?
-- ANSWER:
-- Seaborn is a Python data visualization library built on top of
-- Matplotlib.
-- It provides a high-level interface for creating attractive and
-- informative statistical visualizations.
-- Example:
-- import seaborn as sns
-- import matplotlib.pyplot as plt
-- sns.scatterplot(x=[1, 2, 3], y=[10, 20, 30])
-- plt.show()
-- DIAGRAM:

-- Python Data
-- │
-- ▼
-- Seaborn
-- │
-- ▼
-- Matplotlib
-- │
-- ▼
-- Visualization

-- Q2. Why is Seaborn used in Data Science?
-- ANSWER:
-- Seaborn is useful for exploratory data analysis (EDA).
-- It makes it easier to understand distributions, relationships,
-- categories, correlations, and trends in data.
-- DIAGRAM:

-- Dataset
-- │
-- ▼
-- Seaborn Visualization
-- │
-- ├── Distribution
-- ├── Relationship
-- ├── Category
-- └── Correlation
-- │
-- ▼
-- Data Insights

-- Q3. What is the difference between Seaborn and Matplotlib?
-- ANSWER:
-- Seaborn provides a higher-level interface and better default
-- styling for statistical plots.
-- Matplotlib provides lower-level and more detailed control.
-- DIAGRAM:

-- Visualization
-- │
-- ├── Seaborn
-- │ ├── High-level
-- │ ├── Statistical plots
-- │ └── Better default styling
-- │
-- └── Matplotlib
-- ├── Low-level control
-- └── Detailed customization

-- Q4. How do you import Seaborn?
-- ANSWER:
-- The standard import statement is:
-- import seaborn as sns

-- The alias sns is the conventional name used for Seaborn.

-- Q5. What does sns stand for?
-- ANSWER:
-- sns is the commonly used alias for the Seaborn library.

-- Example:
-- import seaborn as sns
-- sns.histplot(data=[1, 2, 2, 3, 4])

-- Q6. Is Seaborn built on Matplotlib?
-- ANSWER:
-- Yes.
-- Seaborn uses Matplotlib for rendering many of its visualizations.
-- DIAGRAM:

-- Seaborn
-- │
-- ▼
-- Matplotlib
-- │
-- ▼
-- Figure / Plot

-- Q7. What type of data can Seaborn visualize?
-- ANSWER:
-- Seaborn can visualize numerical, categorical, and statistical
-- relationships in datasets.
-- It works especially well with Pandas DataFrames.

-- Q8. Can Seaborn work with Pandas DataFrames?
-- ANSWER:
-- Yes.
-- Seaborn is designed to work conveniently with DataFrames and
-- column names.

-- Example:
-- sns.scatterplot(data=df, x="age", y="salary")

-- Q9. What is the general syntax of a Seaborn plot?
-- ANSWER:
-- A common pattern is:
-- sns.plot_function(data=data, x="column1", y="column2")

-- The exact parameters depend on the plot being created.

-- Q10. What is the purpose of plt.show() with Seaborn?
-- ANSWER:
-- plt.show() displays the current Matplotlib figure.
-- Seaborn creates the visualization, while Matplotlib manages the
-- figure rendering.

-- Example:
-- sns.scatterplot(x=[1, 2, 3], y=[4, 5, 6])
-- plt.show()

-- ============================================================
-- SECTION 2: BASIC SEABORN PLOTS
-- ============================================================

-- Q11. What is a scatter plot in Seaborn?
-- ANSWER:
-- A scatter plot shows the relationship between two numerical
-- variables.
-- Example:
-- sns.scatterplot(data=df, x="age", y="salary")
-- DIAGRAM:
-- Salary
-- │
-- │ ●
-- │ ●
-- │ ● ●
-- │ ●
-- └──────────────── Age

-- It is useful for identifying relationships, clusters, and outliers.

-- Q12. How do you create a line plot?
-- ANSWER:
-- Use sns.lineplot().
-- Example:
-- sns.lineplot(data=df, x="date", y="sales")
-- DIAGRAM:

-- Sales
-- │ ●
-- │ /
-- │ ● ●
-- │ /
-- │● ●
-- └──────────────── Date

-- Q13. What is a bar plot?
-- ANSWER:
-- A bar plot compares numerical values across categorical groups.
-- Example:
-- sns.barplot(data=df, x="category", y="sales")
-- DIAGRAM:
-- Sales
-- │ █
-- │ █ █
-- │ █ █
-- │ █ █ █
-- └────────────
-- A B C

-- Each bar represents a category.

-- Q14. What is a count plot?
-- ANSWER:
-- A count plot displays the number of observations in each
-- categorical group.
-- Example:
-- sns.countplot(data=df, x="gender")
-- DIAGRAM:

-- Count
-- │ █
-- │ █ █
-- │ █ █
-- └──────────────
-- Male Female

-- Q15. What is a histogram?
-- ANSWER:
-- A histogram shows the distribution of a numerical variable by
-- dividing values into bins.
-- Example:
-- sns.histplot(data=df, x="age")
-- DIAGRAM:

-- Frequency
-- │ ███
-- │ ███████
-- │ █████████
-- └────────────────
-- Age Bins

-- Q16. What is a box plot?
-- ANSWER:
-- A box plot summarizes the distribution of numerical data using
-- quartiles, median, and potential outliers.
-- Example:
-- sns.boxplot(data=df, x="salary")
-- DIAGRAM:

-- ─────── Maximum
-- │
-- ┌─────┐
-- │ ─ │ ← Median
-- │ │
-- └─────┘
-- │
-- ─────── Minimum
-- •
-- Outlier

-- Q17. What is a violin plot?
-- ANSWER:
-- A violin plot combines aspects of a box plot and a distribution
-- plot.
-- It shows the distribution and density of numerical values.
-- Example:
-- sns.violinplot(data=df, x="gender", y="salary")
-- DIAGRAM:

-- Density
-- │ ╭──╮
-- │ ╱ ╲
-- │ │ ── │
-- │ ╲ ╱
-- │ ╰──╯
-- └────────────
-- Category

-- Q18. What is a KDE plot?
-- ANSWER:
-- KDE stands for Kernel Density Estimate.
-- It provides a smooth estimate of the probability distribution
-- of numerical data.
-- Example:
-- sns.kdeplot(data=df, x="salary")
-- DIAGRAM:

-- Density
-- │ ╭──╮
-- │ ╭─╯ ╰─╮
-- │ ╭─╯ ╰─╮
-- └────────────────
-- Value

-- Q19. What is a regression plot?
-- ANSWER:
-- A regression plot displays the relationship between two variables
-- and adds a fitted regression line.
-- Example:
-- sns.regplot(data=df, x="experience", y="salary")
-- DIAGRAM:

-- Y
-- │ ●
-- │ ●
-- │ ●
-- │ ●
-- │╱ Regression line
-- └──────────── X

-- Q20. What is a heatmap?
-- ANSWER:
-- A heatmap represents values using different color intensities.
-- It is commonly used to visualize correlation matrices.
-- Example:
-- sns.heatmap(df.corr(), annot=True)
-- DIAGRAM:
-- A B C
-- A [1.0] [.8] [.2]
-- B [.8] [1.0] [.5]
-- C [.2] [.5] [1.0]

-- Color intensity represents value.

-- ============================================================
-- SECTION 3: CATEGORICAL VISUALIZATION
-- ============================================================

-- Q21. What is categorical data visualization?
-- ANSWER:
-- It represents data grouped by categories such as gender,
-- department, product, or city.

-- Common Seaborn plots include:
-- barplot(), countplot(), boxplot(), violinplot(), and stripplot().

-- Q22. Difference between barplot() and countplot()?
-- ANSWER:
-- barplot() displays an aggregated numerical value for each category.
-- countplot() displays the number of observations in each category.
-- DIAGRAM:

-- Categorical Data
-- │
-- ├── barplot()
-- │ └── Aggregated value
-- │
-- └── countplot()
-- └── Number of observations

-- Q23. What is stripplot()?
-- ANSWER:
-- stripplot() displays individual observations for categorical data.
-- Example:
-- sns.stripplot(data=df, x="gender", y="salary")

-- It is useful for seeing individual data points.

-- Q24. What is swarmplot()?
-- ANSWER:
-- swarmplot() displays individual observations while adjusting
-- positions to reduce overlap.

-- Example:
-- sns.swarmplot(data=df, x="category", y="sales")

-- Q25. Difference between stripplot() and swarmplot()?
-- ANSWER:
-- stripplot() can allow points to overlap.
-- swarmplot() positions points to avoid overlap where possible.
-- DIAGRAM:

-- Individual Values
-- │
-- ├── stripplot
-- │ ● ● ● ●
-- │ ● ●
-- │
-- └── swarmplot
-- ●
-- ● ●
-- ● ●

-- Q26. What is a categorical box plot?
-- ANSWER:
-- It compares the distribution of a numerical variable across
-- different categories.
-- Example:
-- sns.boxplot(data=df, x="department", y="salary")
-- DIAGRAM:

-- Salary
-- │ ┌──┐ ┌──┐
-- │ │──│ │──│
-- │ │ │ │ │
-- │ └──┘ └──┘
-- └────────────────────
-- IT HR

-- Q27. How can you compare categories using Seaborn?
-- ANSWER:
-- Use plots such as barplot(), boxplot(), violinplot(), or
-- countplot() depending on the data.

-- Q28. How do you create a horizontal bar plot?
-- ANSWER:
-- Put the numerical variable on y and the category on x, or use
-- the orientation parameters supported by the plot.
-- A common approach is:

-- sns.barplot(data=df, x="sales", y="category")

-- Q29. How do you order categories in Seaborn?
-- ANSWER:
-- Use the order parameter.

-- Example:
-- sns.barplot(data=df, x="category", y="sales",
-- order=["A", "B", "C"])

-- Q30. How do you display counts by category?
-- ANSWER:
-- Use sns.countplot().
-- Example:
-- sns.countplot(data=df, x="department")

-- Output:
-- A bar for each department showing its observation count.

-- ============================================================
-- SECTION 4: DISTRIBUTION AND STATISTICS
-- ============================================================

-- Q31. Why are distribution plots important?
-- ANSWER:
-- Distribution plots help understand the center, spread, shape,
-- skewness, and unusual observations in numerical data.

-- Q32. Difference between histplot() and kdeplot()?
-- ANSWER:
-- histplot() displays observations using histogram bins.
-- kdeplot() displays a smooth estimated density.
-- DIAGRAM:

-- Distribution
-- │
-- ├── histplot()
-- │ █ ███ █
-- │
-- └── kdeplot()
-- ╭──╮
-- ╭─╯ ╰─╮

-- Q33. Can histplot() show KDE?
-- ANSWER:
-- Yes.
-- KDE can be enabled using kde=True.

-- Example:
-- sns.histplot(data=df, x="age", kde=True)

-- Q34. What are bins in a histogram?
-- ANSWER:
-- Bins are intervals used to group numerical observations.
-- Example:
-- sns.histplot(data=df, x="age", bins=10)
-- DIAGRAM:

-- Values
-- ──────────────────────────
-- | Bin1 | Bin2 | Bin3 | Bin4 |
-- ──────────────────────────
-- Each bin contains observations
-- within a particular range.

-- Q35. What happens if the number of bins changes?
-- ANSWER:
-- More bins provide more detail, while fewer bins provide a more
-- summarized distribution.
-- An inappropriate number of bins can hide or exaggerate patterns.

-- Q36. What is skewness?
-- ANSWER:
-- Skewness describes the asymmetry of a distribution.
-- DIAGRAM:
-- Positive Skew:
-- ███████
-- █████
-- ███
-- ██
-- █───────────────►
-- Long right tail

-- Negative Skew:
-- █
-- ███
-- █████
-- ███████
-- ◄───────────────
-- Long left tail

-- Q37. How can Seaborn help identify outliers?
-- ANSWER:
-- Box plots and scatter plots can help identify unusual observations.
-- DIAGRAM:

-- ────────┬────────
-- │
-- ┌─────┐
-- │ ─── │
-- └─────┘
-- │
-- • ← Possible outlier

-- Q38. What is a box plot's IQR?
-- ANSWER:
-- IQR means Interquartile Range.
-- It is the difference between the third quartile and first quartile.
-- IQR = Q3 - Q1
-- DIAGRAM:

-- Q1 ┌──────────────┐ Q3
-- │ IQR │
-- └──────────────┘
-- Median

-- Q39. What is the median line in a box plot?
-- ANSWER:
-- The median line represents the 50th percentile of the data.
-- DIAGRAM:

-- ┌─────────┐
-- │ ─────│ ← Median
-- │ │
-- └─────────┘

-- Q40. What does a box plot show?
-- ANSWER:
-- A box plot can show the median, quartiles, spread, whiskers,
-- and potential outliers.
-- DIAGRAM:

-- Maximum
-- │
-- ─
-- │
-- ┌───────┐
-- │ ─ │ ← Median
-- └───────┘
-- │
-- ─
-- │
-- Outlier •

-- ============================================================
-- SECTION 5: RELATIONSHIPS AND REGRESSION
-- ============================================================

-- Q41. What is a relational plot?
-- ANSWER:
-- A relational plot visualizes relationships between variables.
-- sns.relplot() is a figure-level function for relational plots.

-- Example:
-- sns.relplot(data=df, x="age", y="salary")

-- Q42. What is the purpose of sns.relplot()?
-- ANSWER:
-- relplot() provides a figure-level interface for creating
-- relational plots such as scatter and line plots.

-- Example:
-- sns.relplot(data=df, x="age", y="salary", kind="scatter")

-- Q43. What is the difference between scatterplot() and lineplot()?
-- ANSWER:
-- scatterplot() emphasizes individual observations.
-- lineplot() connects observations and is useful for trends,
-- especially when an ordered variable such as time is involved.
-- DIAGRAM:
-- Scatter:
-- ● ● ●
-- ● ●
-- ●

-- Line:
-- ●───●───●───●

-- Q44. What is sns.lmplot()?
-- ANSWER:
-- lmplot() is a figure-level function for plotting data and a
-- linear regression model.

-- Example:
-- sns.lmplot(data=df, x="experience", y="salary")

-- Q45. Difference between regplot() and lmplot()?
-- ANSWER:
-- regplot() is an axes-level function.
-- lmplot() is a figure-level function and is useful for creating
-- regression plots with semantic grouping and faceting.
-- DIAGRAM:

-- Regression
-- │
-- ├── regplot()
-- │ └── Axes-level
-- │
-- └── lmplot()
-- └── Figure-level

-- Q46. What is correlation?
-- ANSWER:
-- Correlation measures the strength and direction of association
-- between two variables.
-- DIAGRAM:
-- Positive:
-- ●
-- ●
-- ●
-- ●
-- Negative:
-- ●
-- ●
-- ●
-- ●

-- No clear relationship:
-- ● ●
-- ●
-- ● ●

-- Q47. How can you visualize correlation using Seaborn?
-- ANSWER:
-- A common approach is to calculate a correlation matrix and
-- visualize it with heatmap().

-- Example:
-- corr = df.corr(numeric_only=True)
-- sns.heatmap(corr, annot=True)

-- Q48. What does annot=True do in a heatmap?
-- ANSWER:
-- annot=True displays the numerical values inside the heatmap cells.

-- Example:
-- sns.heatmap(corr, annot=True)

-- Q49. What does cmap mean in Seaborn?
-- ANSWER:
-- cmap specifies the color map used to represent values.

-- Example:
-- sns.heatmap(corr, cmap="coolwarm")

-- Q50. What is the purpose of a correlation heatmap?
-- ANSWER:
-- It provides a visual summary of relationships between numerical
-- variables.
-- DIAGRAM:
-- A B C
-- A 1.0 0.8 0.1
-- B 0.8 1.0 0.4
-- C 0.1 0.4 1.0

-- Stronger relationship
-- ↓
-- Stronger color intensity

-- ============================================================
-- SECTION 6: SEABORN PARAMETERS AND CUSTOMIZATION
-- ============================================================

-- Q51. What is the hue parameter?
-- ANSWER:
-- hue separates data into groups using different colors.
-- Example:
-- sns.scatterplot(data=df, x="age", y="salary", hue="gender")
-- DIAGRAM:

-- Data
-- │
-- ├── Group A → ● ● ●
-- │
-- └── Group B → ▲ ▲ ▲
-- ↑
-- hue

-- Q52. What is the style parameter?
-- ANSWER:
-- style changes the marker style based on a categorical variable.

-- Example:
-- sns.scatterplot(data=df, x="age", y="salary", style="gender")

-- Q53. What is the size parameter?
-- ANSWER:
-- size can map a variable to the size of visual elements.

-- Example:
-- sns.scatterplot(data=df, x="age", y="salary", size="experience")

-- Q54. What is palette in Seaborn?
-- ANSWER:
-- palette controls the set of colors used for categorical groups.

-- Example:
-- sns.barplot(data=df, x="category", y="sales", palette="Set2")

-- Q55. What is the difference between hue and palette?
-- ANSWER:
-- hue determines which variable creates groups.
-- palette determines the colors assigned to those groups.
-- DIAGRAM:

-- Category
-- │
-- ▼
-- hue
-- │
-- ▼
-- Groups
-- │
-- ▼
-- palette
-- │
-- ▼
-- Colors

-- Q56. What is alpha?
-- ANSWER:
-- alpha controls transparency.
-- It is useful when many points overlap.

-- Example:
-- sns.scatterplot(data=df, x="age", y="salary", alpha=0.5)

-- Q57. What is marker?
-- ANSWER:
-- marker specifies the shape used for individual points.

-- Example:
-- sns.scatterplot(data=df, x="age", y="salary", marker="o")

-- Q58. What is the purpose of linewidth?
-- ANSWER:
-- linewidth controls the width of lines or borders in supported
-- plots.

-- Example:
-- sns.lineplot(data=df, x="month", y="sales", linewidth=2)

-- Q59. How do you add a title to a Seaborn plot?
-- ANSWER:
-- Use Matplotlib's title functionality.

-- Example:
-- sns.scatterplot(data=df, x="age", y="salary")
-- plt.title("Age vs Salary")

-- Q60. How do you label x-axis and y-axis?
-- ANSWER:
-- Use Matplotlib functions such as xlabel() and ylabel().

-- Example:
-- plt.xlabel("Age")
-- plt.ylabel("Salary")

-- ============================================================
-- SECTION 7: STYLES, FIGURES AND AXES
-- ============================================================

-- Q61. What is sns.set_theme()?
-- ANSWER:
-- sns.set_theme() sets the overall visual theme and styling for
-- Seaborn plots.

-- Example:
-- sns.set_theme(style="whitegrid")

-- Q62. What are common Seaborn styles?
-- ANSWER:
-- Common styles include:
-- white
-- dark
-- whitegrid
-- darkgrid
-- ticks

-- Example:
-- sns.set_style("whitegrid")

-- Q63. What is the difference between figure-level and axes-level
-- functions?
-- ANSWER:
-- Axes-level functions draw on a specific Matplotlib Axes.
-- Figure-level functions manage the overall figure and can support
-- features such as faceting.
-- DIAGRAM:

-- Seaborn Functions
-- │
-- ├── Axes-level
-- │ └── Draw on an Axes
-- │
-- └── Figure-level
-- └── Manage Figure
-- └── Faceting

-- Q64. Give examples of axes-level functions.
-- ANSWER:
-- Examples include:
-- scatterplot()
-- lineplot()
-- barplot()
-- boxplot()
-- histplot()
-- kdeplot()
-- heatmap()
-- regplot()

-- Q65. Give examples of figure-level functions.
-- ANSWER:
-- Common examples include:
-- relplot()
-- displot()
-- catplot()
-- lmplot()

-- Q66. What is sns.displot()?
-- ANSWER:
-- displot() is a figure-level function for visualizing distributions.
-- It can create histogram, KDE, and ECDF-style distribution plots.

-- Example:
-- sns.displot(data=df, x="age", kind="hist")

-- Q67. What is sns.catplot()?
-- ANSWER:
-- catplot() is a figure-level interface for categorical plots.

-- Example:
-- sns.catplot(data=df, x="department", y="salary", kind="box")

-- Q68. What is sns.FacetGrid?
-- ANSWER:
-- FacetGrid creates a grid of plots based on subsets of a dataset.
-- It is useful for comparing relationships across categories.
-- DIAGRAM:

-- Complete Dataset
-- │
-- ├── Group A → Plot
-- ├── Group B → Plot
-- └── Group C → Plot
-- │
-- ▼
-- Plot Grid

-- Q69. What is faceting?
-- ANSWER:
-- Faceting means creating multiple similar plots for different
-- subsets of the data.
-- DIAGRAM:

-- Department
-- ┌────┬────┬────┐
-- │ IT │ HR │Sales│
-- ├────┼────┼────┤
-- │Plot│Plot│Plot │
-- └────┴────┴────┘

-- Q70. Why is faceting useful?
-- ANSWER:
-- It allows analysts to compare patterns across categories without
-- combining all groups into one crowded plot.

-- ============================================================
-- SECTION 8: ADVANCED SEABORN VISUALIZATION
-- ============================================================

-- Q71. What is PairPlot?
-- ANSWER:
-- sns.pairplot() creates pairwise relationships between numerical
-- variables.
-- It is useful for exploratory data analysis.
-- Example:
-- sns.pairplot(df)
-- DIAGRAM:

-- A B C
-- ┌───────┬───────┬───────┐
-- A │ A vs A│ A vs B│ A vs C│
-- ├───────┼───────┼───────┤
-- B │ B vs A│ B vs B│ B vs C│
-- ├───────┼───────┼───────┤
-- C │ C vs A│ C vs B│ C vs C│
-- └───────┴───────┴───────┘

-- Q72. What is the purpose of pairplot()?
-- ANSWER:
-- It helps identify relationships, distributions, correlations,
-- clusters, and possible outliers across multiple variables.

-- Q73. How can hue be used with pairplot()?
-- ANSWER:
-- hue can separate observations by a categorical variable.
-- Example:
-- sns.pairplot(df, hue="species")

-- This makes patterns between groups easier to compare.

-- Q74. What is JointPlot?
-- ANSWER:
-- sns.jointplot() visualizes the relationship between two variables
-- together with their individual distributions.
-- Example:
-- sns.jointplot(data=df, x="age", y="salary")
-- DIAGRAM:

-- X Distribution
-- ────────────────
-- │
-- Y ● │
-- Distribution ● ● ●
-- │ ● │
-- │ │
-- └──────────┴──────
-- X

-- Q75. Difference between pairplot() and jointplot()?
-- ANSWER:
-- pairplot() compares multiple variables pairwise.
-- jointplot() focuses on two variables.
-- DIAGRAM:

-- Variables
-- │
-- ├── pairplot()
-- │ └── Many pairwise relationships
-- │
-- └── jointplot()
-- └── Two variables + distributions

-- Q76. What is ECDF?
-- ANSWER:
-- ECDF stands for Empirical Cumulative Distribution Function.
-- It shows the proportion of observations less than or equal to
-- each value.
-- DIAGRAM:

-- Proportion
-- 1.0 ┤ ●
-- │ ●
-- 0.5 ┤ ●
-- │ ●
-- 0.0 └──────────────── Value

-- Q77. How can Seaborn visualize an ECDF?
-- ANSWER:
-- Use ecdfplot().

-- Example:
-- sns.ecdfplot(data=df, x="age")

-- Q78. What is a residual plot?
-- ANSWER:
-- A residual plot shows the difference between observed and
-- predicted values.
-- It is useful for examining regression model errors.
-- Residual = Actual - Predicted
-- DIAGRAM:

-- Residual
-- │ ● ●
-- │
-- ──┼────────────── Zero
-- │ ● ●
-- │
-- └──────────────── X

-- Q79. How can Seaborn visualize regression residuals?
-- ANSWER:
-- regplot() can visualize a regression relationship, while residual
-- analysis can be performed by calculating residual values and then
-- plotting them.
-- residplot() is also available for residual visualization.

-- Q80. What is a rug plot?
-- ANSWER:
-- A rug plot marks individual observations along an axis.
-- It can help show where observations are concentrated.
-- Example:
-- sns.rugplot(data=df, x="age")
-- DIAGRAM:

-- Values
-- ─────────────────────────
-- │ │ │ ││ │ │
-- │ │ │ ││ │ │
-- ─────────────────────────

-- ============================================================
-- SECTION 9: HEATMAPS AND MATRIX VISUALIZATION
-- ============================================================

-- Q81. What is a correlation matrix?
-- ANSWER:
-- A correlation matrix contains correlation coefficients between
-- pairs of numerical variables.
-- Example:
-- corr = df.corr(numeric_only=True)
-- DIAGRAM:

-- Age Salary Exp
-- Age 1 .7 .5
-- Salary .7 1 .8
-- Exp .5 .8 1

-- Q82. How do you create a correlation heatmap?
-- ANSWER:
-- Example:
-- corr = df.corr(numeric_only=True)
-- sns.heatmap(corr, annot=True)

-- Q83. What does center=0 mean in a heatmap?
-- ANSWER:
-- center=0 tells the color mapping to treat zero as the center
-- of the color scale.
-- It is useful for diverging data such as correlations.

-- Example:
-- sns.heatmap(corr, center=0, annot=True)

-- Q84. What is the purpose of vmin and vmax?
-- ANSWER:
-- vmin and vmax define the minimum and maximum values used for
-- the heatmap color scale.

-- Example:
-- sns.heatmap(corr, vmin=-1, vmax=1)

-- Q85. What is annot_kws in heatmap()?
-- ANSWER:
-- annot_kws allows customization of the appearance of annotation
-- text when annot=True is used.

-- Example:
-- sns.heatmap(corr, annot=True,
-- annot_kws={"size": 10})

-- Q86. How can you hide the color bar in a heatmap?
-- ANSWER:
-- Use cbar=False.

-- Example:
-- sns.heatmap(corr, annot=True, cbar=False)

-- Q87. How can you change the labels displayed in a heatmap?
-- ANSWER:
-- You can use xticklabels and yticklabels.

-- Example:
-- sns.heatmap(corr, xticklabels=["A", "B"],
-- yticklabels=["A", "B"])

-- Q88. What is a clustered heatmap?
-- ANSWER:
-- A clustered heatmap groups similar rows and columns based on
-- their relationships.
-- In Seaborn, clustermap() can be used.

-- Example:
-- sns.clustermap(corr)

-- ============================================================
-- SECTION 10: PRACTICAL INTERVIEW QUESTIONS
-- ============================================================

-- Q89. How do you visualize missing values using Seaborn?
-- ANSWER:
-- A common approach is to convert missing-value indicators into
-- a Boolean matrix and visualize it with a heatmap.
-- Example:
-- sns.heatmap(df.isnull(), cbar=False)
-- DIAGRAM:

-- Data
-- │
-- ▼
-- isnull()
-- │
-- ▼
-- True / False Matrix
-- │
-- ▼
-- Heatmap

-- Q90. How do you visualize outliers?
-- ANSWER:
-- Box plots are commonly used for numerical outlier detection.
-- Scatter plots are also useful when studying relationships.

-- Example:
-- sns.boxplot(data=df, y="salary")

-- Q91. How do you compare salary distributions between departments?
-- ANSWER:
-- Use a box plot or violin plot with department as the category.
-- Example:
-- sns.boxplot(data=df, x="department", y="salary")
-- DIAGRAM:

-- Salary
-- │ ┌──┐ ┌──┐
-- │ │ │ │ │
-- │ │──│ │──│
-- │ └──┘ └──┘
-- └────────────────────
-- IT HR

-- Q92. How do you visualize sales trends over time?
-- ANSWER:
-- Use a line plot with time on the x-axis and sales on the y-axis.
-- Example:
-- sns.lineplot(data=df, x="date", y="sales")
-- DIAGRAM:

-- Sales
-- │ ●
-- │ ●
-- │ ● ●
-- │ ●
-- └──────────────── Date

-- Q93. How do you visualize the relationship between sales and profit?
-- ANSWER:
-- Use a scatter plot.
-- Example:
-- sns.scatterplot(data=df, x="sales", y="profit")

-- The plot can help identify correlation, clusters, and outliers.

-- Q94. How do you compare the distribution of a variable across
-- multiple categories?
-- ANSWER:
-- Use boxplot(), violinplot(), or histplot() with a grouping
-- variable such as hue.

-- Example:
-- sns.boxplot(data=df, x="category", y="sales")

-- Q95. How do you visualize the relationship between several
-- numerical variables?
-- ANSWER:
-- Use pairplot().
-- Example:
-- sns.pairplot(df)

-- This is particularly useful during exploratory data analysis.

-- Q96. How do you visualize a categorical variable's frequency?
-- ANSWER:
-- Use countplot().

-- Example:
-- sns.countplot(data=df, x="category")

-- Q97. How do you identify relationships between numerical columns?
-- ANSWER:
-- Use scatter plots, pair plots, correlation matrices, and
-- correlation heatmaps.
-- DIAGRAM:

-- Numerical Columns
-- │
-- ├── Scatter Plot
-- ├── Pair Plot
-- ├── Correlation Matrix
-- └── Heatmap

-- Q98. How do you create multiple plots in Seaborn?
-- ANSWER:
-- You can use figure-level functions such as relplot(), catplot(),
-- displot(), or create Matplotlib subplots and draw Seaborn plots
-- on individual Axes.
-- DIAGRAM:

-- Figure
-- ┌───────────────┬───────────────┐
-- │ Plot 1 │ Plot 2 │
-- ├───────────────┼───────────────┤
-- │ Plot 3 │ Plot 4 │
-- └───────────────┴───────────────┘

-- Q99. What are common mistakes when creating Seaborn visualizations?
-- ANSWER:
-- Common mistakes include:
-- 1. Choosing an inappropriate plot.
-- 2. Showing too many categories at once.
-- 3. Using misleading scales.
-- 4. Ignoring missing values and outliers.
-- 5. Using too many colors.
-- 6. Not labeling axes clearly.
-- 7. Using a chart that does not match the question.
-- DIAGRAM:

-- Business Question
-- │
-- ▼
-- Choose Correct Chart
-- │
-- ▼
-- Clear Visualization
-- │
-- ▼
-- Correct Interpretation

-- Q100. How do you choose the right Seaborn plot for a Data Analyst
-- interview?
-- ANSWER:
-- Choose the plot based on the analytical question.
-- DIAGRAM:
-- What do you want to understand?
-- │
-- ┌───────┼────────┬─────────┐
-- ▼ ▼ ▼ ▼
-- Distribution Relationship Category Correlation
-- │ │ │ │
-- ▼ ▼ ▼ ▼
-- Histogram Scatter Bar Heatmap
-- KDE Line Count
-- Box/Violin Box
-- QUICK DECISION GUIDE:

-- Distribution → histplot(), kdeplot(), boxplot(), violinplot()
-- Relationship → scatterplot(), lineplot()
-- Categories → barplot(), countplot(), boxplot()
-- Correlation → heatmap()
-- Multiple variables → pairplot()
-- Regression → regplot(), lmplot()
-- Faceting → relplot(), catplot(), displot()
-- Missing values → heatmap(df.isnull())

-- ============================================================
-- QUICK REVISION
-- ============================================================

-- SEABORN
-- │
-- ├── BASIC PLOTS
-- │ ├── scatterplot()
-- │ ├── lineplot()
-- │ ├── barplot()
-- │ ├── countplot()
-- │ └── histplot()
-- │
-- ├── DISTRIBUTION
-- │ ├── histplot()
-- │ ├── kdeplot()
-- │ ├── boxplot()
-- │ └── violinplot()
-- │
-- ├── RELATIONSHIPS
-- │ ├── scatterplot()
-- │ ├── lineplot()
-- │ ├── regplot()
-- │ └── lmplot()
-- │
-- ├── CATEGORICAL
-- │ ├── barplot()
-- │ ├── countplot()
-- │ ├── boxplot()
-- │ ├── violinplot()
-- │ ├── stripplot()
-- │ └── swarmplot()
-- │
-- ├── STATISTICAL / MATRIX
-- │ ├── heatmap()
-- │ ├── clustermap()
-- │ └── pairplot()
-- │
-- ├── ADVANCED
-- │ ├── FacetGrid
-- │ ├── relplot()
-- │ ├── catplot()
-- │ ├── displot()
-- │ ├── jointplot()
-- │ └── ecdfplot()
-- │
-- └── CUSTOMIZATION
-- ├── hue
-- ├── style
-- ├── size
-- ├── palette
-- ├── alpha
-- └── set_theme()

-- ============================================================
-- MOST IMPORTANT QUESTIONS TO MEMORIZE
-- ============================================================

-- 1. What is Seaborn?
-- 2. Why is Seaborn used in Data Science?
-- 3. Seaborn vs Matplotlib
-- 4. scatterplot() vs lineplot()
-- 5. barplot() vs countplot()
-- 6. histplot() vs kdeplot()
-- 7. boxplot() and IQR
-- 8. boxplot() vs violinplot()
-- 9. stripplot() vs swarmplot()
-- 10. What is hue?
-- 11. What is palette?
-- 12. What is FacetGrid?
-- 13. Figure-level vs axes-level functions
-- 14. relplot(), catplot(), and displot()
-- 15. pairplot()
-- 16. jointplot()
-- 17. regplot() vs lmplot()
-- 18. Correlation heatmap
-- 19. annot=True
-- 20. cmap
-- 21. vmin and vmax
-- 22. clustermap()
-- 23. Visualizing missing values
-- 24. Visualizing outliers
-- 25. Choosing the correct plot for a business question
-- FINAL INTERVIEW TIP:
-- Do not only memorize the function names.
-- Be ready to explain:
-- 1. What the chart shows.
-- 2. When to use it.
-- 3. What type of data it requires.
-- 4. What insight you can obtain from it.
-- 5. How you would interpret the result for a business problem.

-- ============================================================