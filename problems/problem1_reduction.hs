-- Here's a function that sums a list.  We'll call it sum' because there's
-- already a built-in "sum" function (which does exactly this, actually).
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs -- parens are needed because application binds tighter than cons

-- Try printing sum' [1..5]

-- Now define a function that returns the product of all the elements in a list.
product' :: (Num a) => [a] -> a
...

-- Try printing product' [1..5]

-- And in the same way, define a function that copies a list to a new list.
copy' :: [a] -> [a]
...

-- Try printing copy' [1..5]

-- Did you notice that all the functions above looked awfully similar?
-- That's because they're all types of reduction.  So let's write a reduce
-- function.  In Haskell this is the built-in "foldr" function (fold right).
reduce' f z [] = ...
reduce' f z (x:xs) = ...

-- Now that we have a reduce' function, let's redefine sum, product and copy as
-- reductions.
sum'' = reduce' (+) 0  -- Parens are needed to treat "+" as a function, rather than applying it to 0
product'' = ...
copy'' = ...

-- Make sure sum'', product'', and copy'' do what sum', product', and copy' do.
