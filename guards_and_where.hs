import Data.List
import System.IO

whatGrade :: Int -> String

whatGrade age 
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary School"
    | (age > 10) && (age <= 16) = "Elementary School"
    | otherwise = "Go to College"


batAvgRating :: Double -> Double -> String

batAvgRating hits atBats 
    | avg <= 0.200 = "Terrible Batting avg"
    | avg <= 0.250 = "Average player"
    | avg <= 0.280 = "You're doing pretty good"
    | otherwise = "You're a Superstar"
    where avg = hits/atBats


