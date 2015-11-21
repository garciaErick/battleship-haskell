import Data.List
import System.IO

list1 :: [[Int]]
list1 = [[1,0,0],[0,1,0],[0,0,1]]
valueOf :: Int -> Char
valueOf 0 = 'x'
valueOf 1 = 'y'
valueOf _ = 'z'

listValues :: [[Int]] -> [String]
listValues = map (map valueOf)

printValues :: [[Int]] -> IO ()
printValues = putStrLn . unlines . listValues
main = do 
	putStrLn "What is your name?"
	name <- getLine
	putStrLn ("Hello" ++ name)