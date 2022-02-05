import Data.List
import System.IO

-- Type Insance is used to override or define type classes 

data ShirtSize = S | M | L

instance Eq ShirtSize where 
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False

instance Show ShirtSize where 
    show S = "Small"
    show M = "Medium"
    show L = "Large"

smallAvail = S `elem` [S,M,L]

theSize = show S