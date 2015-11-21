module Battleship where
	import Data.List
	import System.IO
	
	type Board = [[Int]]
	mkBoard :: Int -> Board
	mkBoard 0 = [[]]
	mkBoard n = 
		if n >= 0 
			then take n (repeat (take n (repeat 0)))
		else [[0]]
	type Coordinate = (Int, Int, Bool)

	board = mkBoard 10
	getRow n = board !! n
	printRow n = [ toString x | x <- getRow n]
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



	list1 :: [[Int]]
	list1 = [[1,0,0],[0,1,0],[0,0,1]]
	valueOf :: Int -> Char
	valueOf 0 = '0' -- Default Place
	valueOf 1 = 'M' -- Minesweeper
	valueOf 2 = 'S' -- Submarine
	valueOf 3 = 'F' -- Frigate
	valueOf 4 = 'B' -- Battleship
	valueOf 5 = 'A' -- Aircraft Carrier
	valueOf _ = 'x' -- Place Hit

	printBoard :: [[Int]] -> IO ()
	printBoard = putStrLn . unlines . listValues
	listValues :: [[Int]] -> [String]
	listValues = map (map valueOf)

