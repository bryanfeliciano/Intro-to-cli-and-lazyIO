import System.Environment
import Control.Monad

sampleInput :: [String]
sampleInput = ["21","+","123"]

calc :: [String] -> Int
calc (val1:"+":val2:rest) = read val1 + read val2
calc (val1:"*":val2:rest) = read val1 * read val2

main :: IO ()
main = do
 userInput <- getContents
 let values = lines userInput
 print (calc values)


-- main :: IO ()
-- main = do
--     args <- getArgs
--     let linesToRead = if length args > 0
--     then read (head args)
--     else 0 :: Int
--     numbers <- replicateM linesToRead getLine
--     let ints = map read numbers :: [Int]
--     print (sum ints)

