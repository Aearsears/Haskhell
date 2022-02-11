module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = 
    do
        txt <- getLine
        printLine txt

reverseWords :: String -> String
reverseWords = unwords . map reverse . words  

printLine:: String -> IO()
printLine s = putStrLn s  

-- printLines :: Num a ->IO()
-- printLines 0 = return()
-- printLines n = do
--     putStrLn "yes"
--     printLines n-1

-- printLines :: IO()->IO()
-- printLines 0 = return ()
-- printLines n = do 
--     printLine
--     printLines n-1

inside a = a `elem` [5,4,3,2,1]
