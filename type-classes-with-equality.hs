import Data.List
import System.IO

-- where 'a' represents any type that implements the function areEqual 
class MyEq a where
    areEqual :: a -> a -> Bool

data ShirtSize = S | M | L 

instance MyEq ShirtSize where 
    areEqual S S = True
    areEqual M M = True
    areEqual L L = True
    areEqual _ _ = False


-- this is how we define custom type classes