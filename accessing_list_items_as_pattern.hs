import Data.List
import System.IO

getFirstItem :: String -> String

getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in "++ all ++ " is "++[x]