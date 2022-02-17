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
concat' :: [[a]] -> [a]
concat' [] = [] 
concat' ([]:xss) = concat' xss
concat' ((x:xs):xss) = x:concat' (xs:xss)

-- Define a function remSuccessiveDuplicates which removes succesive repeated elements from a list: [1, 2, 2, 3, 2, 4] is mapped to [1, 2, 3, 2, 4].
remSuccessiveDuplicates :: (Eq a ) => [a] ->[a]
remSuccessiveDuplicates l
    | l == [] = []
    | length l == 1 = l
    | head l == head (tail l) = (head l):remSuccessiveDuplicates (tail(tail l))
    | otherwise =  (head l):remSuccessiveDuplicates (tail l)
-- get tail, and then get head of tail. if head and head of tail are equal, do f h:f tail of tail
--else f h:tail

-- Define a function that groups successive duplicate elements in a list into sublists: [1, 2, 2, 3, 2, 4] is mapped to [[1], [2, 2], [3], [2], [4]].
groupSuccessiveDuplicates :: (Eq a) => [a] -> [[a]] 
groupSuccessiveDuplicates l 
    | l == [] = []
    | length l == 1 = [l]
    | head l == head (tail l) = [head l,head (tail l)]:groupSuccessiveDuplicates (tail (tail l))
    | otherwise =  [head l]:groupSuccessiveDuplicates (tail l)
-- takes list and creats sublist for each item [1,2,3] -> [[1],[2],[3]]
listtosublist :: [a] -> [[a]]
listtosublist [] = []
listtosublist (h:t) = [h]:listtosublist t
