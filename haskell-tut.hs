import Data.List
import System.IO

-- Int range from minus 2^63 to positive 2^63
minInt = minBound :: Int
maxInt = maxBound :: Int

-- Integer (unbounded whole number, as big as the memory can hold)

-- Float (single precision floating point numbers)

-- Double (decimals, precision upto 11 points)
bigFloat = 3.9999999999999999 + 0.0000000000000001

-- Bool True False

-- Char 'a' 'b'

-- Tuple (store list of many different datatypes)

-- :: <Datatype> typecasting


-- adding of numbers from 1 to 1000
sumOfNums = sum [1..10000]

addEx = 5 + 4 
subEx = 5 - 4 
multEx = 5 * 4 
divEx = 5 / 4 
modEx = mod 5 4 -- prefix operator because "mod" is pre 5 & 4
modEx2 = 5 `mod` 4 -- infix operator because "mod" is in-between 5 & 4

negNumEx = 5 + (-4)

num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)

--Built in Math functions
piVal = pi
ePow9 = exp 9 
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Also sin, con, tan, asin, atan, acos, sinh
-- tanh, cosh, asinh, atanh, acosh

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)


primeNumber = [3,5,7,11] --list
morePrimeNumbers = primeNumber ++ [13,16,19] -- ++ is concat 

favNums = morePrimeNumbers++ 2: 7 : 21: 66 : [] -- this way we can combine numbers into a list

multList = [[3,5,7],[11,13,17]]

morePrimeNumbers2 = 2 : morePrimeNumbers

lenPrime = length morePrimeNumbers

revPrime = reverse morePrimeNumbers2

isListEmpty = null morePrimeNumbers2

secondPrime = morePrimeNumbers2 !! 1

firstPrime = head morePrimeNumbers2

lastPrime = last morePrimeNumbers2

primeInit = init morePrimeNumbers2 -- everything but the last value

first3Primes = take 3 morePrimeNumbers2 -- get first 3 values  

removedPrimes = drop 3 morePrimeNumbers2 -- return values left after removing specified number of values

is7InList = 7 `elem` morePrimeNumbers2 -- check if the specified value exists in the list

maxPrime = maximum morePrimeNumbers2

minPrime = minimum morePrimeNumbers2

primeProd = product morePrimeNumbers2 -- product of the list (of all the prime numbers)

zeroToTen = [0..10] -- generate list 0 to 10

evenList = [2,4..20] -- generate even list

letterList = ['A','C'..'Z']

infinPow10 = [10,20..] -- infinite list

infinPow2000Element = infinPow10 !! 2000 -- generates an infinite list until the index 2000

many2s = take 10 (repeat 2) -- first 10 values would be 2 

many3s = replicate 10 3 -- same as above?

cycleList = take 12 (cycle [1,2,3,4,5]) -- replicate the values in a list indefinitely output-eg: 1,2,3,4,5,1,2,3,4,5,1,2

listTimes2 = [x * 2  | x<- [1..10]] 
{-
multiply all the values in a list by 2, 
the latter part is extract the value from list and store it in x temporarily, multiply it with the value. 
-}

listTimes3 = [x * 3 | x<-[1..10], x*3<=50]

divisBy9N13 = [x | x<-[1..500], x `mod` 13 == 0, mod x 9 == 0]
{-
we go through a list from 1 to 500 and we only want values divisible by 13 and 9 
-}

sortedList = sort [9,3,2,1,6,3]

sumOfList = zipWith(+) [1,2,3,4,5] [2,3,4]

listBiggerThan5 = filter(>5) morePrimeNumbers2

evensUpTo20 = takeWhile(<=20) [2,4..]

multOfList = foldl (*) 1[2,3,4,5] -- foldl, goes through list items from LEFT and multiplied them all together, foldr from RIGHT

{- LIST COMPREHENSIONS -}

pow3List = [3^n | n <-[1..10]]

multTable = [[x * y | y <-[1..10]] | x<-[1..10]] -- multiply each x with each y 


randTuple = (1, "Random Tuple")

bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob","Jack","Max"]
address = ["123 Main","234 Main","454 main"]

namesAgeAddress = zip names address --[("Bob","123 Main"),("Jack","234 Main"),("Max","454 main")]--