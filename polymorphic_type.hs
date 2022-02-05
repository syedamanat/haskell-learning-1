import Data.List 
import System.IO

data Shape = Circle Float Float Float
    | Rectangle Float Float Float Float
    deriving Show

area:: Shape -> Float

area (Circle _ _ r) = pi * r^2

-- $ sign suggests that anything that comes after it takes precedence over anything that comes before it
area (Rectangle x y x2 y2) = (abs $ x2-x ) * (abs(y2-y))


-- DOT OPERATOR, allows you to chain functions pass output on the right to input on the left
sumValue = putStrLn(show (1+2))
sumValue2 = putStrLn . show $ 1 + 2 

areaOfCircle = area(Circle 0 0 5)
areaOfRect = area $ Rectangle 10 10 100 100
