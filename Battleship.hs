module Battleship where
	import Data.Char
	import Data.List
	import System.IO
	
	type Board = [[Int]]
	type Coordinates = (Int, Int, Bool)
	type Coordinate = (Int, Int)
	getBoolean n = 
  		if n == True
			then "1"
		else 
			"0"
	isShipPlaced x y board
	    | (coordinate == 5) || (coordinate == 4) || (coordinate == 3) 
	    	|| (coordinate == 2) || (coordinate == 1) = True
	    | otherwise = False
  		where
	  		row = getRow y board
	  		coordinate = row !! x
	isGameOver x y board
		| (coordinate == 5) || (coordinate == 4) || (coordinate == 3) 
		    	|| (coordinate == 2) || (coordinate == 1) = sumRow 7 row
		    | otherwise = 0
	  		where
		  		row = getRow y board
		  		coordinate = row !! x 
	sumRow index (x:xs)
	     | index == 0 = sum
	     | otherwise = sum + sumRow (index-1) xs
	     where
	     	sum  = x
	--Replacing a value in a list
	replace index newVal (x:xs)
	     | index == 0 = newVal:xs
	     | otherwise = x:replace (index-1) newVal xs
	--Print Regular Board
	printBoard :: [[Int]] -> IO ()
	printBoard = putStrLn . unlines . listValues
	listValues :: [[Int]] -> [String]
	listValues = map (map valueOf)
	valueOf :: Int -> Char
	valueOf 0 = '0' -- Default Place
	valueOf 1 = '0' -- Minesweeper
	valueOf 2 = '0' -- Submarine
	valueOf 3 = '0' -- Frigate
	valueOf 4 = '0' -- Battleship
	valueOf 5 = '0' -- Aircraft Carrier
	valueOf 6 = 'x' -- Place Hit
	valueOf _ = 'x' -- Place Missed
	--Print Cheat Board  
	printCheatBoard :: [[Int]] -> IO ()
	printCheatBoard = putStrLn . unlines . listCheatValues
	listCheatValues :: [[Int]] -> [String]
	listCheatValues = map (map cheatValue)
	cheatValue :: Int -> Char
	cheatValue 0 = '0' -- Default Place
	cheatValue 1 = 'M' -- Minesweeper
	cheatValue 2 = 'S' -- Submarine
	cheatValue 3 = 'F' -- Frigate
	cheatValue 4 = 'B' -- Battleship
	cheatValue 5 = 'A' -- Aircraft Carrier
	cheatValue 6 = 'x' -- Place Hit
	cheatValue _ = 'x' -- Place Missed
	--For parsing user input
	convertStringToCoordinates :: String -> Coordinate
	convertStringToCoordinates ['(', x, ',', y, ')'] = ((ord x) - (ord '0') + 1, (ord y) - (ord '0') + 1)
	convertStringToCoordinates _ = (-1, -1)
	getRow n board = board !! n
	--Board Functions
	--List to initiate Board
	list = take 10 [0,0..0]
	mkBoard :: [Int] -> [Int] -> [Int] -> [Int] ->
				[Int] -> [Int] -> [Int] -> [Int] -> 
				[Int] -> [Int] -> Board
	mkBoard row1 row2 row3 row4 row5 row6 row7 row8 row9 row10 = [row1, row2, row3, row4, row5, row6, row7, row8, row9, row10]
	board = mkBoard list list list list list list list list list list 
	--Ship Functions
	--Insert a [Int] at a [[Int]] (Board)
	insertRowAt :: Int -> [Int]-> Board -> Board 
	insertRowAt z y board = as ++ [y] ++ cs
                where 
                  	(as,bs) = splitAt z board
                	cs = drop 1 bs
	placeShipx n x y ship board
	     | index == x = newBoard
	     | otherwise = 
	     	do 
	     		placeShipx (n-1) x y ship newBoard
	     		where 
	     			newBoard = insertRowAt y newRow board
	     			newRow = replace index ship row
	     			row = getRow y board
	     			index = (n-1) + x
	hit x y board = insertRowAt y newRow board	
			where
				newRow = replace x 6 (getRow y board)
	isShipPlaceable :: Coordinates -> Bool
	isShipPlaceable (x,y,dir) = if x < 1 || x > 10 || y < 1 || y > 10 then False
	                            else True
    --isShip:Placed x y board
	   --  | x == 5 = newBoard
	   --  | otherwise = false
	  	--	where
	  	--		row = getRow y board
	  	--		x = row !! x

    --	if 
	--getBoolean n = 
 -- 		if n == True
	--		then "1"
	--	else 
	--		"0"
	--		where n = n+1

    --Do not Erase
	--getBoolean :: Bool -> [Char]
	--getBoolean n = 
	--	if n == True
	--		then "You have placed a ship"
	--	else 
	--		"Invalid Coordinates"

	--tuple1 = (1,2,True)	
	--getX (x,_,_) = x
	--getY (_,y,_) = y
	--getDir (_,_,dir) = dir