module Battleship where
	import Data.Char
	import Data.List
	import System.IO
	
	type Board = [[Int]]
	type Board1 = [[Integer]]
	type Coordinates = (Int, Int, Bool)

    cdd x = ord x

	getBoolean :: Bool -> [Char]
	getBoolean n = 
		if n == True
			then "You have placed a ship"
		else 
			"Invalid Coordinates"

	mkBoard :: Int -> Board
	mkBoard 0 = [[]]
	mkBoard n = 
		if n >= 0 
			then take n (repeat (take n (repeat 0)))
		else [[0]]
	list = [0,0,0,0,0,0,0,0,0,0]

	mkBoard1 :: [Integer] -> [Integer] -> [Integer] -> [Integer] ->
				[Integer] -> [Integer] -> [Integer] -> [Integer] -> 
				[Integer] -> [Integer] ->Board1
	mkBoard1 row1 row2 row3 row4 row5 row6 row7 row8 row9 row10= [row1, row2, row3, row4, row5, row6, row7, row8, row9, row10]
	board1 = mkBoard1 list list list list list list list list list list 
	--mkBoard1 n = 
	--	if n >= 0 
	--		then take n (repeat (take n (repeat 0)))
	--	else [[0]]

	board = mkBoard 10
	getRow n = board !! n
	--printRow n = [ toString x | x <- getRow n]
	--placeShip ::  Coordinate -> Board
	tuple1 = (1,2,True)
	getX (x,_,_) = x
	getY (_,y,_) = y
	getDir (_,_,dir) = dir
	--isShipPlaceable n x y dir board
	
	placeShip x y ship board = [replace x ship row]
		where 
			row = board !! y
			ship = 1


	replace index newVal (x:xs)
	     | index == 0 = newVal:xs
	     | otherwise = x:replace (index-1) newVal xs

	valueOf :: Int -> Char
	valueOf 0 = '0' -- Default Place
	valueOf 1 = 'M' -- Minesweeper
	valueOf 2 = 'S' -- Submarine
	valueOf 3 = 'F' -- Frigate
	valueOf 4 = 'B' -- Battleship
	valueOf 5 = 'A' -- Aircraft Carrier
	valueOf 6 = 'x' -- Place Hit
	valueOf _ = 'x' -- Place Missed

	printBoard :: [[Int]] -> IO ()
	printBoard = putStrLn . unlines . listValues
	listValues :: [[Int]] -> [String]
	listValues = map (map valueOf)

	isShipPlaceable :: Coordinates -> Bool
	isShipPlaceable (x,y,dir) = if x < 1 || x > 10 || y < 1 || y > 10 then False
	                            else True

	placeShip1 :: Coordinates -> [Char]
	placeShip1 (x,y,dir) = if isShipPlaceable (x,y,dir) == False then getBoolean(False)
	                      else getBoolean(True)

    