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