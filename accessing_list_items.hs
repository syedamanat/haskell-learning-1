import Data.List
import System.IO

-- the below function is going to receive a LIST made up of INTs and return a String
getListItems :: [Int] -> String

getListItems [] = "Your list is empty"
-- 'show' changes anything to a String
getListItems (x:[]) = "Your list starts with " ++ show x 
getListItems (x:y:[]) = "Your list contains " ++show x ++ " and "++ show y
getListItems (x:xs) = "The first item is "++ show x ++ " and the rest are "++show xs