import Data.List
import System.IO


-- contains if then else condition and definition/name

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

doubleSmallNumber' x = (if x> 100 then x else x^2) +1 -- ' to either denote a strict version of a function (one that isn't lazy) or a slightly modified version of a function or a variable.

o'reilly = "o'reilly publications" -- function names cant begin with uppercase letters, when function doesnt take any parameters we call it definition or name 

