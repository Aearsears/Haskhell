sayme :: (Integral a) => a -> String
sayme 1 = "1"
sayme x = "Everything else"

head' :: [a] -> a
head' [] = error "cant do that"
head' (x:_) = x

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (h:r) = h + sum r

sayTimes :: (Eq a, Num a) => a -> String
sayTimes x 
    | x == 0    = "Done"
    | x == 2    = "almost"
    | otherwise = "hello"

-- http://www.cs.uu.nl/docs/vakken/fp/2019/exercises.html
-- function which takes in a list and returns the last element
lastElem :: [a] -> a 
lastElem [] = error "empty list"
lastElem [a] = a 
lastElem (h:t) = lastElem t 

-- Define a function that determines whether a list is a palindrome, that is, whether the list is equal to its reversal.
-- goog 
palindrome :: (Eq a)=> [a] -> Bool
palindrome l
    | l == []               = True
    | length l == 1             = True
    | head l == lastElem l  = palindrome (tail (init l))
    | otherwise             = False

-- Define the function concat :: [[a]] −> [a] which flattens a list of lists: concat [[1, 2], [3], [ ], [4, 5]] evaluates to [1, 2, 3, 4, 5].
concat :: [[a]] -> [a]
concat [] = error "empty list"
concat h:t = concat h:[t]