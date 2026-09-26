-- ============================================================
-- CORE PYTHON INTERVIEW QUESTIONS
-- DATA ANALYST / DATA SCIENCE
-- BASED ON 40 IMPORTANT PYTHON TOPICS
-- ============================================================


-- ============================================================
-- TOPIC 1: DATA TYPES
-- ============================================================

-- Q1. What are the built-in data types in Python?
-- ANSWER:
-- Python provides several built-in data types:
-- int, float, complex, bool, str, list, tuple,
-- set, dict and NoneType.


-- Q2. How do you check the data type of a variable?
-- ANSWER:
-- We use the type() function.
--
-- Example:
-- x = 10
-- print(type(x))
--
-- Output:
-- <class 'int'>


-- Q3. What is dynamic typing in Python?
-- ANSWER:
-- Python is dynamically typed because we do not need to
-- explicitly declare the data type of a variable.
--
-- Example:
-- x = 10
-- x = "Python"
--
-- The same variable can refer to objects of different types.


-- ============================================================
-- TOPIC 2: LIST
-- ============================================================

-- Q4. What is a list in Python?
-- ANSWER:
-- A list is an ordered and mutable collection that can
-- contain multiple values.
--
-- Example:
-- numbers = [10, 20, 30, 40]


-- Q5. Can a Python list contain different data types?
-- ANSWER:
-- Yes.
--
-- Example:
-- data = [10, "Python", 10.5, True]


-- Q6. How do you add an element to a list?
-- ANSWER:
-- We can use append().
--
-- Example:
-- numbers = [1, 2, 3]
-- numbers.append(4)
--
-- Result:
-- [1, 2, 3, 4]


-- Q7. Difference between append() and extend()?
-- ANSWER:
-- append() adds one object as a single element.
-- extend() adds each element from an iterable.
--
-- Example:
-- a = [1, 2]
-- a.append([3, 4])
-- Result: [1, 2, [3, 4]]
--
-- a = [1, 2]
-- a.extend([3, 4])
-- Result: [1, 2, 3, 4]


-- Q8. How do you remove an element from a list?
-- ANSWER:
-- Common methods are:
-- remove()
-- pop()
-- del
--
-- remove() removes by value.
-- pop() removes by index and returns the element.
-- del can delete an element or slice.


-- ============================================================
-- TOPIC 3: TUPLE
-- ============================================================

-- Q9. What is a tuple?
-- ANSWER:
-- A tuple is an ordered and immutable collection.
--
-- Example:
-- numbers = (10, 20, 30)


-- Q10. Why is a tuple immutable?
-- ANSWER:
-- Once a tuple is created, its elements cannot be changed,
-- added or removed.


-- Q11. List vs Tuple?
-- ANSWER:
-- List:
-- Mutable
-- Uses []
--
-- Tuple:
-- Immutable
-- Uses ()


-- Q12. When would you use a tuple instead of a list?
-- ANSWER:
-- We can use a tuple when the data should not be modified
-- after creation, such as fixed collections of values.


-- ============================================================
-- TOPIC 4: SET
-- ============================================================

-- Q13. What is a set?
-- ANSWER:
-- A set is an unordered collection of unique elements.
--
-- Example:
-- numbers = {1, 2, 3, 3}
--
-- Duplicate values are removed.


-- Q14. How do you remove duplicates using a set?
-- ANSWER:
-- Convert the collection to a set.
--
-- Example:
-- numbers = [1, 2, 2, 3, 3]
-- unique = set(numbers)


-- Q15. What is the difference between a set and a list?
-- ANSWER:
-- List:
-- Ordered and allows duplicates.
--
-- Set:
-- Does not maintain normal list-style indexing and
-- stores unique elements.


-- ============================================================
-- TOPIC 5: DICTIONARY
-- ============================================================

-- Q16. What is a dictionary?
-- ANSWER:
-- A dictionary stores data in key-value pairs.
--
-- Example:
-- student = {
--     "name": "Jagdish",
--     "age": 22
-- }


-- Q17. Can dictionary keys be duplicated?
-- ANSWER:
-- No.
-- Dictionary keys must be unique.
-- If the same key is assigned again, its value is replaced.


-- Q18. How do you access a dictionary value?
-- ANSWER:
-- We can use the key.
--
-- Example:
-- student["name"]


-- Q19. Difference between get() and [] in a dictionary?
-- ANSWER:
-- dict[key] raises KeyError if the key does not exist.
--
-- dict.get(key) returns None by default if the key does
-- not exist and can also accept a default value.


-- ============================================================
-- TOPIC 6: STRING
-- ============================================================

-- Q20. What is a string?
-- ANSWER:
-- A string is an immutable sequence of characters.
--
-- Example:
-- name = "Jagdish"


-- Q21. Are strings mutable?
-- ANSWER:
-- No.
-- Strings are immutable.


-- Q22. How do you reverse a string?
-- ANSWER:
-- We can use slicing.
--
-- Example:
-- text = "Python"
-- text[::-1]
--
-- Output:
-- nohtyP


-- Q23. How do you convert a string to uppercase?
-- ANSWER:
-- Use upper().
--
-- Example:
-- text.upper()


-- Q24. How do you split a string?
-- ANSWER:
-- Use split().
--
-- Example:
-- text = "Python SQL"
-- text.split()
--
-- Output:
-- ["Python", "SQL"]


-- ============================================================
-- TOPIC 7: INDEXING
-- ============================================================

-- Q25. What is indexing?
-- ANSWER:
-- Indexing is used to access individual elements from
-- a sequence.
--
-- Python uses zero-based indexing.


-- Q26. What is negative indexing?
-- ANSWER:
-- Negative indexing accesses elements from the end.
--
-- Example:
-- numbers = [10, 20, 30, 40]
-- numbers[-1]
--
-- Output:
-- 40


-- ============================================================
-- TOPIC 8: SLICING
-- ============================================================

-- Q27. What is slicing?
-- ANSWER:
-- Slicing extracts a portion of a sequence.
--
-- Syntax:
-- sequence[start:stop:step]


-- Q28. What does [::-1] do?
-- ANSWER:
-- It reverses a sequence.
--
-- Example:
-- numbers = [1, 2, 3]
-- numbers[::-1]
--
-- Output:
-- [3, 2, 1]


-- Q29. What is the difference between indexing and slicing?
-- ANSWER:
-- Indexing normally returns a single element.
-- Slicing returns a portion of a sequence.


-- ============================================================
-- TOPIC 9: OPERATORS
-- ============================================================

-- Q30. What are the main types of operators in Python?
-- ANSWER:
-- Arithmetic
-- Comparison
-- Logical
-- Assignment
-- Membership
-- Identity
-- Bitwise


-- Q31. Difference between / and //?
-- ANSWER:
-- / performs true division.
-- // performs floor division.


-- Q32. What is the difference between == and is?
-- ANSWER:
-- == compares values.
-- is checks object identity.


-- Q33. What are membership operators?
-- ANSWER:
-- in
-- not in
--
-- Example:
-- "Python" in ["Python", "SQL"]
--
-- Result:
-- True


-- ============================================================
-- TOPIC 10: IF / ELIF / ELSE
-- ============================================================

-- Q34. What is an if statement?
-- ANSWER:
-- An if statement executes a block of code when a condition
-- is True.


-- Q35. What is elif?
-- ANSWER:
-- elif means "else if".
-- It is used to check additional conditions.


-- Q36. Can we have multiple elif blocks?
-- ANSWER:
-- Yes.
-- A Python if statement can contain multiple elif blocks.


-- ============================================================
-- TOPIC 11: FOR LOOP
-- ============================================================

-- Q37. What is a for loop?
-- ANSWER:
-- A for loop is used to iterate over an iterable.
--
-- Example:
-- for i in [1, 2, 3]:
--     print(i)


-- Q38. What can we iterate over using a for loop?
-- ANSWER:
-- Examples include:
-- list
-- tuple
-- string
-- set
-- dictionary
-- range()
-- other iterable objects


-- ============================================================
-- TOPIC 12: WHILE LOOP
-- ============================================================

-- Q39. What is a while loop?
-- ANSWER:
-- A while loop repeatedly executes code while a condition
-- remains True.


-- Q40. When would you use a while loop?
-- ANSWER:
-- We generally use it when the number of iterations is not
-- known beforehand and depends on a condition.


-- Q41. What can cause an infinite while loop?
-- ANSWER:
-- If the condition never becomes False, the loop can
-- continue indefinitely.


-- ============================================================
-- TOPIC 13: BREAK / CONTINUE / PASS
-- ============================================================

-- Q42. What is break?
-- ANSWER:
-- break immediately terminates the loop.


-- Q43. What is continue?
-- ANSWER:
-- continue skips the current iteration and moves to
-- the next iteration.


-- Q44. What is pass?
-- ANSWER:
-- pass does nothing.
-- It is used as a placeholder.


-- Q45. Difference between break, continue and pass?
-- ANSWER:
-- break    -> Stops the loop.
-- continue -> Skips current iteration.
-- pass     -> Does nothing.


-- ============================================================
-- TOPIC 14: FUNCTIONS
-- ============================================================

-- Q46. What is a function?
-- ANSWER:
-- A function is a reusable block of code that performs
-- a specific task.


-- Q47. Why are functions useful?
-- ANSWER:
-- Functions:
-- 1. Reduce code duplication.
-- 2. Improve readability.
-- 3. Make code reusable.
-- 4. Make testing easier.
-- 5. Organize code into logical units.


-- Q48. What is a parameter?
-- ANSWER:
-- A parameter is a variable defined in a function definition.


-- Q49. What is an argument?
-- ANSWER:
-- An argument is the actual value passed to a function.


-- Q50. What is return?
-- ANSWER:
-- return sends a value back from a function.


-- Q51. What happens if a function has no return statement?
-- ANSWER:
-- It returns None by default.


-- ============================================================
-- TOPIC 15: LAMBDA
-- ============================================================

-- Q52. What is a lambda function?
-- ANSWER:
-- A lambda is a small anonymous function written using
-- the lambda keyword.


-- Q53. What is the syntax of a lambda function?
-- ANSWER:
-- lambda arguments: expression
--
-- Example:
-- square = lambda x: x * x


-- Q54. When should you use a lambda function?
-- ANSWER:
-- Lambda functions are useful for short, simple operations
-- where defining a full named function would be unnecessary.


-- ============================================================
-- TOPIC 16: *args / **kwargs
-- ============================================================

-- Q55. What is *args?
-- ANSWER:
-- *args allows a function to accept a variable number of
-- positional arguments.


-- Q56. What is **kwargs?
-- ANSWER:
-- **kwargs allows a function to accept a variable number
-- of keyword arguments.


-- Q57. Difference between *args and **kwargs?
-- ANSWER:
-- *args  -> Variable positional arguments.
-- **kwargs -> Variable keyword arguments.


-- ============================================================
-- TOPIC 17: SCOPE
-- ============================================================

-- Q58. What is variable scope?
-- ANSWER:
-- Scope determines where a variable can be accessed.


-- Q59. What is LEGB?
-- ANSWER:
-- LEGB represents the order Python follows when looking
-- for a variable:
--
-- L -> Local
-- E -> Enclosing
-- G -> Global
-- B -> Built-in


-- Q60. What is a local variable?
-- ANSWER:
-- A variable created inside a function is normally local
-- to that function.


-- Q61. What is a global variable?
-- ANSWER:
-- A variable defined outside functions is generally global
-- and can be accessed from functions, subject to scope rules.


-- ============================================================
-- TOPIC 18: LIST COMPREHENSION
-- ============================================================

-- Q62. What is list comprehension?
-- ANSWER:
-- List comprehension is a concise way to create a list
-- from an iterable.
--
-- Example:
-- squares = [x*x for x in range(5)]


-- Q63. Can list comprehension contain a condition?
-- ANSWER:
-- Yes.
--
-- Example:
-- even = [x for x in range(10) if x % 2 == 0]


-- Q64. List comprehension vs normal for loop?
-- ANSWER:
-- Both can produce the same result.
-- List comprehension is generally more concise and readable
-- for simple transformations and filtering.


-- ============================================================
-- TOPIC 19: DICTIONARY COMPREHENSION
-- ============================================================

-- Q65. What is dictionary comprehension?
-- ANSWER:
-- Dictionary comprehension is a concise way to create
-- dictionaries.
--
-- Example:
-- squares = {x: x*x for x in range(5)}


-- Q66. Can dictionary comprehension contain a condition?
-- ANSWER:
-- Yes.
--
-- Example:
-- result = {x: x*x for x in range(10) if x % 2 == 0}


-- ============================================================
-- TOPIC 20: EXCEPTION HANDLING
-- ============================================================

-- Q67. What is an exception?
-- ANSWER:
-- An exception is an error or unusual condition that occurs
-- during program execution and can be handled by the program.


-- Q68. What is exception handling?
-- ANSWER:
-- Exception handling allows a program to handle runtime
-- errors using try and except instead of terminating
-- unexpectedly.


-- Q69. What are try and except?
-- ANSWER:
-- try contains code that may raise an exception.
-- except handles a matching exception.


-- Q70. What is finally?
-- ANSWER:
-- finally normally executes whether an exception occurs
-- or not.


-- Q71. What is raise?
-- ANSWER:
-- raise is used to explicitly raise an exception.


-- ============================================================
-- TOPIC 21: OOP
-- ============================================================

-- Q72. What is OOP?
-- ANSWER:
-- OOP stands for Object-Oriented Programming.
-- It organizes programs using classes and objects.


-- Q73. What are the main concepts of OOP?
-- ANSWER:
-- 1. Class
-- 2. Object
-- 3. Encapsulation
-- 4. Inheritance
-- 5. Polymorphism
-- 6. Abstraction


-- ============================================================
-- TOPIC 22: CLASS / OBJECT
-- ============================================================

-- Q74. What is a class?
-- ANSWER:
-- A class is a blueprint for creating objects.


-- Q75. What is an object?
-- ANSWER:
-- An object is an instance of a class.


-- Q76. What is __init__()?
-- ANSWER:
-- __init__() is an initializer method that runs when an
-- object is initialized.


-- Q77. What is self?
-- ANSWER:
-- self refers to the current object instance inside
-- instance methods.


-- ============================================================
-- TOPIC 23: INHERITANCE
-- ============================================================

-- Q78. What is inheritance?
-- ANSWER:
-- Inheritance allows a child class to reuse attributes
-- and methods from a parent class.


-- Q79. What are common types of inheritance?
-- ANSWER:
-- Common forms include:
-- Single
-- Multiple
-- Multilevel
-- Hierarchical
-- Hybrid


-- Q80. What is method overriding?
-- ANSWER:
-- Method overriding occurs when a child class provides
-- its own implementation of a method inherited from
-- its parent class.


-- ============================================================
-- TOPIC 24: POLYMORPHISM
-- ============================================================

-- Q81. What is polymorphism?
-- ANSWER:
-- Polymorphism means the same interface or operation can
-- work with different types or objects.


-- Q82. Give a simple example of polymorphism.
-- ANSWER:
-- The + operator behaves differently depending on the
-- operands.
--
-- 2 + 3 -> 5
-- "A" + "B" -> "AB"


-- ============================================================
-- TOPIC 25: ENCAPSULATION
-- ============================================================

-- Q83. What is encapsulation?
-- ANSWER:
-- Encapsulation means bundling data and methods together
-- and controlling access to implementation details.


-- Q84. Does Python have private variables?
-- ANSWER:
-- Python does not enforce private variables in the same
-- strict way as some languages.
--
-- A double underscore triggers name mangling and provides
-- stronger protection against accidental access.


-- ============================================================
-- TOPIC 26: ABSTRACTION
-- ============================================================

-- Q85. What is abstraction?
-- ANSWER:
-- Abstraction means exposing essential behavior while
-- hiding unnecessary implementation details.


-- Q86. Why is abstraction useful?
-- ANSWER:
-- It reduces complexity and allows users to focus on
-- what an object does rather than how it does it.


-- ============================================================
-- TOPIC 27: ITERATOR
-- ============================================================

-- Q87. What is an iterator?
-- ANSWER:
-- An iterator is an object that produces values one at a
-- time using the iterator protocol.


-- Q88. Which methods are used in the iterator protocol?
-- ANSWER:
-- __iter__()
-- __next__()


-- Q89. What happens when an iterator has no more values?
-- ANSWER:
-- __next__() raises StopIteration.


-- ============================================================
-- TOPIC 28: GENERATOR
-- ============================================================

-- Q90. What is a generator?
-- ANSWER:
-- A generator is a special type of iterator that produces
-- values lazily, usually using yield.


-- Q91. What is yield?
-- ANSWER:
-- yield produces a value and pauses the generator while
-- preserving its state for the next iteration.


-- Q92. Generator vs List?
-- ANSWER:
-- List:
-- Stores all elements in memory.
--
-- Generator:
-- Produces elements one at a time.
--
-- Generators can be useful when working with large sequences.


-- ============================================================
-- TOPIC 29: DECORATOR
-- ============================================================

-- Q93. What is a decorator?
-- ANSWER:
-- A decorator is a callable that modifies or extends the
-- behavior of another function or class without changing
-- its source code directly.


-- Q94. Why are decorators used?
-- ANSWER:
-- They can be used for reusable cross-cutting behavior such as:
-- logging
-- timing
-- authorization
-- validation
-- caching


-- ============================================================
-- TOPIC 30: RECURSION
-- ============================================================

-- Q95. What is recursion?
-- ANSWER:
-- Recursion occurs when a function calls itself.


-- Q96. What is a base condition in recursion?
-- ANSWER:
-- The base condition is the condition that stops recursive
-- calls and prevents infinite recursion.


-- Q97. What happens if recursion has no proper base condition?
-- ANSWER:
-- The function may continue calling itself until Python
-- raises a RecursionError.


-- ============================================================
-- TOPIC 31: SHALLOW COPY / DEEP COPY
-- ============================================================

-- Q98. What is shallow copy?
-- ANSWER:
-- A shallow copy creates a new outer object, but nested
-- objects may still be shared.


-- Q99. What is deep copy?
-- ANSWER:
-- A deep copy recursively copies nested objects so that
-- the copied structure does not normally share those
-- nested mutable objects with the original.


-- Q100. Difference between shallow copy and deep copy?
-- ANSWER:
-- Shallow copy:
-- New outer object, shared nested objects.
--
-- Deep copy:
-- New outer object and recursively copied nested objects.


-- ============================================================
-- TOPIC 32: MEMORY MANAGEMENT
-- ============================================================

-- Q101. How does Python manage memory?
-- ANSWER:
-- Python manages memory automatically.
-- CPython primarily uses reference counting along with
-- a cyclic garbage collector.


-- Q102. What is garbage collection?
-- ANSWER:
-- Garbage collection identifies unreachable objects and
-- reclaims memory associated with them.


-- Q103. Does Python require manual memory deallocation?
-- ANSWER:
-- Normally no.
-- Python automatically manages memory and object lifetime.


-- ============================================================
-- TOPIC 33: PEP 8
-- ============================================================

-- Q104. What is PEP 8?
-- ANSWER:
-- PEP 8 is the official Python style guide.
-- It provides recommendations for writing readable
-- and consistent Python code.


-- Q105. Why is PEP 8 important?
-- ANSWER:
-- It improves:
-- 1. Code readability
-- 2. Consistency
-- 3. Maintainability
-- 4. Collaboration


-- ============================================================
-- TOPIC 34: ENUMERATE()
-- ============================================================

-- Q106. What is enumerate()?
-- ANSWER:
-- enumerate() allows us to iterate over an iterable while
-- receiving both the index and value.


-- Q107. Give an example of enumerate().
-- ANSWER:
--
-- names = ["A", "B", "C"]
--
-- for index, name in enumerate(names):
--     print(index, name)


-- ============================================================
-- TOPIC 35: ZIP()
-- ============================================================

-- Q108. What is zip()?
-- ANSWER:
-- zip() combines elements from multiple iterables
-- position by position.


-- Q109. Give an example of zip().
-- ANSWER:
--
-- names = ["A", "B"]
-- ages = [20, 25]
--
-- for name, age in zip(names, ages):
--     print(name, age)


-- ============================================================
-- TOPIC 36: ANY()
-- ============================================================

-- Q110. What is any()?
-- ANSWER:
-- any() returns True if at least one element in the
-- iterable is truthy.
--
-- Example:
-- any([False, False, True])
--
-- Output:
-- True


-- ============================================================
-- TOPIC 37: ALL()
-- ============================================================

-- Q111. What is all()?
-- ANSWER:
-- all() returns True only when every element in the
-- iterable is truthy.
--
-- Example:
-- all([True, True, True])
--
-- Output:
-- True


-- Q112. Difference between any() and all()?
-- ANSWER:
-- any() -> At least one element must be truthy.
-- all() -> Every element must be truthy.


-- ============================================================
-- TOPIC 38: MAP()
-- ============================================================

-- Q113. What is map()?
-- ANSWER:
-- map() applies a function to every item of an iterable
-- and returns an iterator containing the results.


-- Q114. Give an example of map().
-- ANSWER:
--
-- numbers = [1, 2, 3]
--
-- result = map(lambda x: x * 2, numbers)
--
-- list(result)
--
-- Output:
-- [2, 4, 6]


-- ============================================================
-- TOPIC 39: FILTER()
-- ============================================================

-- Q115. What is filter()?
-- ANSWER:
-- filter() selects elements for which a given function
-- returns True.


-- Q116. Give an example of filter().
-- ANSWER:
--
-- numbers = [1, 2, 3, 4, 5]
--
-- result = filter(lambda x: x % 2 == 0, numbers)
--
-- list(result)
--
-- Output:
-- [2, 4]


-- ============================================================
-- TOPIC 40: REDUCE()
-- ============================================================

-- Q117. What is reduce()?
-- ANSWER:
-- reduce() repeatedly applies a function to the elements
-- of an iterable and reduces them to a single result.
--
-- In Python 3, reduce() is available from functools.


-- Q118. Give an example of reduce().
-- ANSWER:
--
-- from functools import reduce
--
-- numbers = [1, 2, 3, 4]
--
-- result = reduce(
--     lambda a, b: a + b,
--     numbers
-- )
--
-- Output:
-- 10


-- ============================================================
-- RAPID-FIRE INTERVIEW QUESTIONS
-- ============================================================

-- Q119. Is Python case-sensitive?
-- ANSWER:
-- Yes. Python is case-sensitive.


-- Q120. Does Python support multiple inheritance?
-- ANSWER:
-- Yes. A class can inherit from multiple parent classes.


-- Q121. Are lists mutable?
-- ANSWER:
-- Yes.


-- Q122. Are tuples mutable?
-- ANSWER:
-- No.


-- Q123. Are strings mutable?
-- ANSWER:
-- No.


-- Q124. Does a set allow duplicate values?
-- ANSWER:
-- No.


-- Q125. Can dictionary keys be duplicated?
-- ANSWER:
-- No. Keys must be unique.


-- Q126. Does Python support recursion?
-- ANSWER:
-- Yes.


-- Q127. Does Python support lambda functions?
-- ANSWER:
-- Yes.


-- Q128. Does Python support exception handling?
-- ANSWER:
-- Yes.


-- Q129. Does Python support OOP?
-- ANSWER:
-- Yes.


-- Q130. What is None?
-- ANSWER:
-- None represents the absence of a value.


-- ============================================================
-- MOST IMPORTANT QUESTIONS TO PREPARE FIRST
-- ============================================================

-- 1. List vs Tuple
-- 2. List vs Set
-- 3. Dictionary
-- 4. Mutable vs Immutable
-- 5. == vs is
-- 6. / vs //
-- 7. for vs while
-- 8. break vs continue vs pass
-- 9. Function
-- 10. Parameter vs Argument
-- 11. *args vs **kwargs
-- 12. Local vs Global Scope
-- 13. List Comprehension
-- 14. Lambda
-- 15. Exception Handling
-- 16. Class vs Object
-- 17. Inheritance
-- 18. Polymorphism
-- 19. Encapsulation
-- 20. Abstraction
-- 21. Iterator vs Iterable
-- 22. Iterator vs Generator
-- 23. yield
-- 24. Decorator
-- 25. Recursion
-- 26. Shallow Copy vs Deep Copy
-- 27. Python Memory Management
-- 28. enumerate()
-- 29. zip()
-- 30. any() vs all()
-- 31. map()
-- 32. filter()
-- 33. reduce()