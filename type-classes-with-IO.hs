import Data.List
import System.IO

sayHello = do  --do allows us to chain a bunch of functions
    putStrLn("Whats your name")
    name <- getLine --input
    putStrLn $ "Hello " ++ name --output

writeToFile = do
    theFile <- openFile "test.txt" WriteMode --open a file and write-only to it
    hPutStrLn theFile ("Random line of text") -- to put text into that file 'hPutStrLn' and pass the handle 'theFile' 
    hClose theFile --close the file/release.

readFromFile = do
    theFile2 <- openFile "test.txt" ReadMode
    contents <- hGetContents theFile2 
    putStr contents
    hClose theFile2
