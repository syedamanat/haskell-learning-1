import Data.List
import System.IO

main = do
    putStrLn("What's your Name?")
    name <- getLine
    putStrLn ("Hello " ++ name)