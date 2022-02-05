import Data.List
import System.IO

-- comparision operators: < > <= >= == /=  
-- logical operators: && || not

-- below is the program to double only even numbers
doubleEvenNumber y =
    if (mod y 2 /=0)
        then y
        else y * 2

getClass :: Int -> String
getClass n = case n of
    5 -> "Go to kindergarten"
    6 -> "Go to school"
    _ -> "Go away"