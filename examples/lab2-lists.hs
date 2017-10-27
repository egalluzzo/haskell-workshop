-- Let's define a list of numbers.  In Haskell, all lists are linked lists.
let numbers = [1, 2, 3]
:t numbers
-- Note the type constraint: we still don't actually know what type of numbers
-- these are.


-- Here's a longer way of writing a list.  This is what is actually happening
-- behind the scenes when we define a list using the nicer syntax above.
let sameNumbers = 1:2:3:[]
-- ":" is called "cons".  "[]" is an empty list.


-- We can append two lists.
let myNumbers = numbers ++ sameNumbers
print myNumbers
-- You should generally not do this because you have to traverse down the list
-- to do so, but if you absolutely have to access an element in the middle of
-- the list...
myNumbers !! 4


-- Here are some generally useful functions on lists.
-- head returns the first element.
head myNumbers
-- tail returns all the elements except the first one.
tail myNumbers
-- null determines whether a list is empty.
null myNumbers
null []
-- take returns the first n elements of a list.
take 2 myNumbers
-- drop returns everything but the first n elements of a list.
drop 2 myNumbers
-- elem returns whether a value is in a list.
elem 3 myNumbers
-- elem is usually called an infix function, which is more natural.
3 `elem` myNumbers


-- Ranges can be useful; these are just lists in disguise.
[1..10]
[1, 2..10]
[1, 3..10]
-- Lists can be infinite.  I wouldn't recommend trying to print this!
let allNumbers = [1, 2..]
-- What use is this?  Well...
take 5 allNumbers
take 5 [2, 4..]
take 10 (repeat 3)
