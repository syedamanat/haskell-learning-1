import Data.List
import System.IO

factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n - 1)

prodFact n = product[1..n] -- same functionality as the above 

isOdd :: Int -> Bool

-- the below | is called 'Guards' 

isOdd n 
    | n `mod` 2 == 0 = False -- if even return value False
    | otherwise = True

isEven n = mod n 2 == 0 -- same funtionality as above but without 'Guards' 


areStringEq :: [Char] -> [Char] -> Bool

areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys