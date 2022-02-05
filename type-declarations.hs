import Data.List
import System.IO
-- funcName param1 param2 param3 = operations (returned value)

addMe :: Int -> Int -> Int 
addMe x y = x + y

sumMe x y = x+y 

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x,y)(x2,y2) = (x+x2 ,y+y2)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "Hooray!!!! You are an adult"
whatAge _ = "Nothing important"

