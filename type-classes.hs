import Data.List
import System.IO

-- Num Eq Or Show
data Employee = Employee {
    name :: String,
    position :: String,
    idNumber :: Int
} deriving(Eq, Show)

sameSmith = Employee {name = "Sam Smith", position = "Manager", idNumber = 1001}
pamMarx :: Employee
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNumber = 1002}

getPosition (Employee _ position _) = position
--usage getPosition pamMarx returns position of pamMarx

isSamPam = sameSmith == pamMarx -- checks for equality between two datas samSmith and pamMarx
samSmithData = show sameSmith -- prints samSmith data
