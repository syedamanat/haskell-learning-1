import Data.List
import System.IO

times4 :: Int -> Int

times4 x = x * 4

listTimes4 = map times4 [1..10]

multBy4 :: [Int] -> [Int]

multBy4 [] = []

-- x:xs multiple list items we dont know how many 
multBy4 (x:xs) = times4 x : multBy4 xs

{-
Breakdown for the above
[1,2,3,4] : x = 1 times4 returns 4 | xs = [2,3,4]
[2,3,4] : x = 2  times4 returns 8 | xs = [3,4]
[3,4] : x = 3 times4 returns 12 | xs = [4]
...
-}

areStringEq :: [Char] -> [Char] -> Bool

areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys -- recursion is done exceptionally well in Haskell 
areStringEq _ _ = False -- anything that isn't an empty list or list item



doMult :: Int->(Int -> Int) -> Int --we expect a function to be passed inside (Int -> Int) thats going to receive an integer and return an integer

doMult x func = func x -- this is how you PASS A FUNCTION
num3Times4 x = doMult x times4


getAddFunc :: Int -> (Int -> Int) -- this is how you receive a function

getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlu3 = adds3 4
threePlusList = map adds3 [1..5]
