--[[
    This is a simple example of a manual page, and if you try to run it, it will fail.
    I am just giving you an example of how to use the functions that I've created.
]]

--How to use table.sum // this function counts the sum of all the values in a table
local t = {1, 2, 3, 4, 5}

print(table.sum(t))

-- output is 15

-- How to use table.filter // this function filters the values in a table based on a condition
local t = {1, 2, 3, 4, 5}

local filtered = table.filter(t, function(value)
    return value % 2 == 0
end)

print(table.concat(filtered, ", "))

-- output is 2, 4


-- how to use table.map // this function maps the values in a table based on a condition
local t = {1, 2, 3, 4, 5}

-- Define the mapping function
function double(x)
    return x * 2
end
  
  -- Define a table of numbers
  numbers = {1, 2, 3, 4, 5}
  
  -- Use the table.map function to double each element of the table
  doubledTable = table.map(numbers, double)
  
  -- Print the original and mapped tables
 print("Original table: ")
  for i, v in ipairs(numbers) do
    print(v)
end
  
 print("Mapped table: ")
  for i, v in ipairs(doubledTable) do
    print(v)
end  

-- output is
-- Original table:
-- 1
-- 2
-- 3
-- 4
-- 5
-- Mapped table:
-- 2
-- 4
-- 6
-- 8
-- 10



-- how to use table.reduce // this function reduces the values in a table based on a condition
local t = {1, 2, 3, 4, 5}

local reduced = table.reduce(t, function(a, b)
    return a - b
end)

print(reduced)

-- output is -13

-- how to use table.shuffle // this function shuffles the values in a table

local t = {1, 2, 3, 4, 5}

local shuffled = table.shuffle(t)

print(table.concat(shuffled, ", "))

-- output is random

-- how to use table.contains // this function checks if a table contains a value

local t = {1, 2, 3, 4, 5}

print(table.contains(t, 3))

-- output is true

-- how to use table.copy // this function copies a table
local t1 = {1, 2, {3, 4}}
local t2 = table.copy(t1)
t1[1] = 10
t1[3][1] = 30
print(t1[1], t1[3][1]) -- Output: 10 30
print(t2[1], t2[3][1]) -- Output: 1 3


-- how to use table.merge // this function merges two tables

local t1 = {1, 2, 3}

local t2 = {4, 5, 6}

local merged = table.merge(t1, t2)

print(table.concat(merged, ", "))

-- output is 1, 2, 3, 4, 5, 6

-- how to use table.print // this function prints the values in a table

local t = {1, 2, 3, 4, 5}

table.print(t)

-- output is
-- 1
-- 2
-- 3
-- 4
-- 5

-- how to use table.set // this function sets a value in a table

local t = {1, 2, 3, 4, 5}

local set = table.set(t, 1, 10)

print(table.concat(set, ", "))

-- output is 10, 2, 3, 4, 5

-- how to use table.get // this function gets a value in a table

local t = {1, 2, 3, 4, 5}

print(table.get(t, 1))

-- output is 1

-- how to use table.all // this function checks if all the values in a table are true based on a condition

-- Define the predicate function
function isEven(x)
    return x % 2 == 0
end
  
  -- Define a table of numbers
  numbers = {2, 4, 6, 8, 10}
  
  -- Use the table.all function to check if all elements of the table are even
  allEven = table.all(numbers, isEven)
  
  -- Print the result
if allEven then
    print("All elements are even")
  else
    print("Not all elements are even")
end
  
-- output is All elements are even

-- how to use table.any // this function checks if any of the values in a table are true based on a condition

-- Define the predicate function

function isEven(x)
    return x % 2 == 0
end
  
  -- Define a table of numbers
  numbers = {1, 2, 3, 4, 5}
  
  -- Use the table.any function to check if any elements of the table are even
  anyEven = table.any(numbers, isEven)
  
  -- Print the result
if anyEven then
    print("At least one element is even")
  else
    print("No elements are even")
end

-- output is At least one element is even

-- how to use table.flatten // this function flattens a table

local t = {1, 2, {3, 4, {5, 6}}}

local flattened = table.flatten(t)

print(table.concat(flattened, ", "))

-- output is 1, 2, 3, 4, 5, 6

-- how to use table.flatmap // this function maps and flattens a table

local t = {1, 2, 3, 4, 5}

local flatmapped = table.flatmap(t, function(value)
    return {value, value * 2}
end)

print(table.concat(flatmapped, ", "))

-- output is 1, 2, 2, 4, 3, 6, 4, 8, 5, 10

-- how to use table.group // this function groups a table based on a condition

local t = {1, 2, 3, 4, 5}

local grouped = table.group(t, function(value)
    return value % 2 == 0
end)

print(table.concat(grouped[true], ", "))

print(table.concat(grouped[false], ", "))

-- output is 2, 4
-- 1, 3, 5

-- how to use table.localestring // this function converts a table to a string based on a locale

local elements = {"a", "b", "c", "d", "e"}

print(table.localestring(elements, ","))

-- output is a, b, c, d, e -- footnote: this is the default locale, seperator can be anything you want. and multiple seperators can be used.

-- how to use table.indexof // this function gets the index of a value in a table

local t = {1, 2, 3, 4, 5} 

print(table.indexof(t, 3))

-- output is 3

-- how to use table.removevalues // this function removes values from a table

local t = {1, 2, 3, 4, 5}

local removed = table.removevalues(t, {1, 3, 5})

print(table.concat(removed, ", "))

-- output is 1, 3, 5 those are the values that were removed.

-- how to use table.foreach // this function loops through a table

local t = {1, 2, 3, 4, 5}

table.foreach(t, function(value)
    print(value)
end)

--footnote again: this is the same as ipairs, but it's just a different way of doing it. (i personally prefer this way because it looks cleaner) 
-- output is 
-- 1
-- 2
-- 3
-- 4
-- 5

-- how to use table.splice // this function removes and adds values to a table

-- Define a table
local table = {"a", "b", "c", "d", "e"}

-- Call table.splice to remove two elements and add two new elements
local deletedElements = table.splice(table, 2, 2, "x", "y")

-- Print the modified table and the deleted elements
print("Modified table: " .. table.concat(table, ", "))
print("Deleted elements: " .. table.concat(deletedElements, ", "))

-- output is
-- Modified table: a, x, y, e
-- Deleted elements: b, c

-- how to use table.lastindexof // this function gets the last index of a value in a table

local t = {1, 2, 3, 4, 5, 3}

print(table.lastindexof(t, 3))

-- output is 6 // it gets the last index of the value you entered in the second parameter. 

-- how to use table.reverse // this function reverses a table

local t = {1, 2, 3, 4, 5}

table.reverse(t)

print(table.concat(t, ", "))

-- output is 5, 4, 3, 2, 1

-- how to use table.max  // this function gets the max value in a table

local t = {1, 2, 3, 4, 5}

print(table.max(t))

-- output is 5

-- how to use table.min // this function gets the min value in a table

local t = {1, 2, 3, 4, 5}

print(table.min(t))

-- output is 1

-- have a nice work















