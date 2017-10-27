-- Here's the reduce' function from Problem 1.
-- For bonus points, try figuring out what its type should be.
reduce' f z [] = z
reduce' f z (x:xs) = f x (reduce' f z xs)

-- Here's one way to implement a map function.
map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = (f x):(map' f xs)

-- Try printing map' (+1) [1..5]
-- And by the way, what is (+1)?

-- Here's our sqr function from earlier.  Try figuring out what its type is.
sqr :: ...
sqr x = x * x

-- Now let's define a function that maps a list to the squares of its elements.
mapToSquares :: (Num a) => [a] -> [a]
mapToSquares [] = []
mapToSquares (x:xs) = (sqr x):(mapToSquares xs)

-- Try printing mapToSquares [1..5]


-- Now let's go about defining this function in a slightly different way.

-- Here's a function that appends the square of a number to a list.
sqrCons :: (Num a) => a -> [a] -> [a]
sqrCons x xs = (sqr x):xs

-- For bonus points, can you express sqrCons in "point-free" form using
-- function composition?
-- sqrCons' = ...

-- How can you express mapToSquares in terms of reduce' and sqrCons?
mapToSquares' = ...

-- You can inline the function sqrCons (or sqrCons') as well.
mapToSquares'' = ...

-- Now how can we express the map function itself in terms of reduce'?
map'' :: (a -> b) -> [a] -> [b]
...

-- And finally, for the grand finale:
mapToSquares''' = map'' sqr

-- Try printing mapToSquares''' [1..5]
