import Data.List
import System.IO

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]

{-
From the very beginning
we have 
[1:1]

zip fib(tail fib)
zip tells fib, lets take 1 at start and tail of that fib 1 again and pass it to the 
function (a,b) a would 1 and b would receive the rest of the list and it would it add it altogether [1,1] (1+1)=2 add it to the list
then
[1,1,2]
[1,1,2,3]
[1,1,2,3,5]
[1,1,2,3,5,8...]
-}

fib300 = fib !! 300

-- usage : fib300 or "take 20 fib"