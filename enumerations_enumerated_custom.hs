import Data.List
import System.IO

-- Enumeratied types 

data BaseballPlayer = Pitcher 
                    | Catcher 
                    | Infielder
                    | Outfield
                deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True
barryBonds Infielder = False

barryInOF = print(barryBonds Outfield)
barryInIF = print(barryBonds Infielder)


-- Custom types, we can store more values like a struct

data Customer = Customer String String Double 
    deriving Show

tomSmith :: Customer -- new type 
tomSmith = Customer "Tom Smith" "123 Main St." 22.10

getBalance :: Customer -> Double
getBalance (Customer _ _ balance) = balance 