import Data.List
import System.IO
main = print(2);
--fac 0 = 1
--fac n = n * fac (n-1)

--contains:: a -> [a] -> Bool
sumOfNums = sum[1..1000]

--Types of notations
modEx = mod 5 4 --prenotation
modEx1 = 5 `mod` 4 --infix notation

number9 = 9 :: Int --Declaring 9 as integer
sqrtOf9 = sqrt(fromIntegral number9) --Transforming from Int to flat

--Concathenating lists
list1 = [1,2,3,4]
list2 = list1 ++ [5,6,7]
list3 = 1 : 2 : 3 : 4 : []
multList = [list1, list2] --concathenating 2 lists
lenMultList = length multList --length of a list
isEmpty = null list1 --isEmpty()
revList3 = reverse list3 -- Reversea  list
firstValue  n = head n --Getting Head
lastValue n = last n --Getting Tail
secondValue n = n !! 1 --Getting a value from an index
contains1 n = n `elem` list1 --checking if contains
zeroToTen = [0..10]
zeroToTen1 = takeWhile (<=10) [0..]
evenNumbers = [2,4..20] 
alphabet = ['a'..'z']
loop = take 10 (repeat 2)
--Operation with list and loop
listTimes2 = [x * 2 | x <- [1..10], x * 3 <= 50]
dividedBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, mod x 9 == 0]
--Tuple
tuple = (1,"String")
firstValueT = fst tuple
lastValueT = snd tuple
contains _ [] = False
contains x(h:t) = x == h || contains x t


--intersection:: [a] -> [a] -> [a]
--	| contains h s = h : (theRest)
--	| otherwise = theRest
--	where theRest = intersection t s
--include:: a -> [a] -> [a]

--union:: [a] -> [a] -> [a]



--intersection s1 s2 = [ x | x <- s1, contains x s2]
--foldl1 :: [a] -> Int
--foldl1 _ [x] = x
--foldl1 _ [] = 
--foldl1 (+) [1,2,3] = (1+2) + 3
--foldl1 (+) [1,2,3] = ((0 + 1) + 2) + 3 
--foldl1 1 _ [x] = x 
