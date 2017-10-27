2+2
-- Phew, glad it's still not 5, even though 1984 has come and gone!
True
-- ":t" returns the type of its argument (in interactive Haskell).  Let's try
-- it out!
:t True
-- In the case of True, the type is Bool, as you'd expect.


-- Let's define a variable as a string.
let bob = "Bob"
:t bob
-- That's odd, it's a [Char], an array of characters.
:t ['B', 'o', 'b']
-- The same type, that's interesting...
bob == ['B', 'o', 'b']
-- The two are actually identical.  Strings are just shorthand for lists of
-- characters.


-- Now let's define a simple function.
let sqr x = x * x
-- We didn't specify integers or floats or anything, so what is sqr's type?
:t sqr
-- sqr :: Num a => a -> a
-- This means:
-- "sqr" is, given a numeric type "a", of type "a -> a".  In other words, it
-- takes a number and returns a number.
-- All numbers conform to Num, whether Integers or Floating point numbers.  In
-- other words, sqr is generic, and we didn't have to do anything or write any
-- special syntax to make it thus.


-- Let's call our function now.  No parentheses required.
sqr 2
-- What is the type of 4?  You might be surprised...
:t sqr 2


-- Let's define a function that takes two arguments.
len x y = sqrt (sqr x + sqr y)
-- What would you expect the type of "len" to be?  Maybe
-- (Double x, Double y) -> Double?
:t len
-- Actually, Haskell functions always take one argument, just like lambda
-- expressions in the lambda calculus.  len could have been written as:
len' x = \y -> sqrt(sqr x + sqr y)
-- See the backslash?  That's Haskell's equivalent of the lambda.  Also,
-- note that an apostrophe ("prime") is a valid character in identifiers.
-- You could take it one step further:
len'' = \x -> (\y -> sqrt(sqr x + sqr y))
len 3 4
len' 3 4
len'' 3 4
-- What do you think this will print?
len 3 4 * 5
len 3 20
-- In Haskell, function application binds more tightly than any other operator.
-- So "len 3 4 * 5" is "(len 3 4) * 5".


-- What does this do?
len3 = len 3
len3 4
-- len3 is an example of "currying".  All functions are technically "curried"
-- in Haskell.  Hence the odd signatures, like a -> a -> a.


-- Let's define a new function that takes the fourth power, the square of the
-- square.
pow4 x = sqr (sqr x) -- parens are necessary
pow4 2
-- We can also compose functions, just like in math.  This is considered better
-- form in Haskell....
pow4' = sqr . sqr
pow4' 2
