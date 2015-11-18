import Data.List
import System.IO
type Board = [[Bool]]

mkBoard :: Int -> Board
mkBoard 0 = [[]]
mkBoard n = 
	if n >= 0 
		then take n (repeat (take n (repeat False)))
	else [[False]]
type Coordinate = (Int, Int, Bool)

board = mkBoard 10
getRow n = board!! n
printRow n = [ getBoolean x | x <- getRow n]
--placeShip ::  Coordinate -> Board
list = [[False, True, False, False, False],[False, False, False, False, False]]
tuple1 = (1,2,True)
getX (x,_,_) = x
getY (_,y,_) = y
getDir (_,_,dir) = dir
--isShipPlaceable n x y dir board
isShipPlaceable x y dir board = 
	if(row !! x == True)
		then False
	else
		True
	where 
		row = board !! y
placeShip tuple board = [replace x True row]
	where 
		x = getX tuple 
		dir = getDir tuple
		y = getY tuple
		row = board !! y

replace index newVal (x:xs)
     | index == 0 = newVal:xs
     | otherwise = x:replace (index-1) newVal xs








printStringNTimes 0 = return ()
printStringNTimes n =
 do
  putStr "0 "
  printStringNTimes (n-1)

--printBoard 0 = return ()
--printBoard n = 
--	do
--		printStringNTimes n
--		putStr "\n"
--		printBoard (n-1)

--printRow 0 = return ()
--printRow n =
--	do
--		take 10(repeat getRow n)

printBoard 0 = 0
printBoard n = 
	do
		_ <- printRow n
		--putStr "\n"
		printBoard (n-1)


		--printBoard (n-1)
getBoolean :: Bool -> [Char]
getBoolean n = 
	if n == True
		then "1"
	else 
		"0"

