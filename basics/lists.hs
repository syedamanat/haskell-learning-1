import Data.List
import System.IO

{-
In Haskell, lists are a homogenous data structure. It stores several elements of the same type.
That means that we can have a list of integers or a list of characters
but we can't have a list that has a few integers and then a few characters.
lists are denoted by square brackets
-}

list1 = [1,2,3,4]
list2 = [5,6,7,8]
list3 = list1 ++ list2

listChar1 = ['h','e','l','l','o']
listChar2 = ['w','o','r','l','d']
listChar3 = listChar1 ++ listChar2

--putting something at the beginning of a list using the : operator (also called the cons operator) is instantaneous.
--putting something at the end of the list can be resource intensive given haskell would have to traverse EOL of the left side of ++

listChar4 = 'A' : " CATTO"

name="Some Name Goes Here"
index2OfName = name !! 2

list = ["fruits","veggies","????"]
listOfAList = list ++ ["Apples","Potatoes", "..?"]

numberList1 = [2,3,5]
numberList2 = [5,3,1]
compareNumberList = numberList1 >= numberList2 -- lexicographical comparision

-- ranges
numbers1To20 = [1..20]
evenNumbers = [2,4..20]
oddNumbers = [1,3..20]
primeNumbers = [3,5..20]

--generating the list until 'nth' value of an infinite list
take50 = take 50 [20,40..]

--handful of functions that produce infinite list
--cycle : takes a list and the cycles it into infinite list
cycleList = take 10(cycle[1,2,3]) -- repeats 1,2,3 in a list until 'n' times
--repeat repeats the same element 'n' times
repeatList = take 10(repeat 2)



-- List Comprehension, building more specific sets out of general sets
evenNumbersSet = [x*2 | x<-[1..100]] -- generate 1 to 100 and multiply each value with 2


-- adding condition or predicate to a list Comprehension
predicatedList = [x*2 | x<-[1..50], x*2>55, x*2<80, mod x 3 ==0]

-- weeding out a list by predicates is called filtering



replaceOddsWithBoomEvensWithBang = [ if odd x then "boom" else "" |  x<-[1..100]]

-- A list produced by comprehension of two lists 
twoListsProduct = [x*y | x<-[1,2,3], y<-[1,2,3]] --[1,2,3,2,4,6,3,6,9] 

conditionsInTwoListProduct = [x*y | x<-[1,2,3], y<-[1,2,3], x+y>3]

-- Combining strings from two lists
nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
nounsPlusAdjectives = [adjective ++" "++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _<-xs] -- custom version of length, the input is a string and here it replaces all the characters whatever they maybe with _ and then adds them up

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']] -- the character will be included in the new list only if it's an element of the list ['A'..'Z']


listInAList = [[1..5], [1..6]]