module Battleship where
	import Data.Char
	import Data.List
	import System.IO
	
	type Board = [[Int]]
	type Coordinates = (Int, Int, Bool)
	type Coordinate = (Int, Int)
	isShipPlaced x y board
	    | (coordinate == 5) || (coordinate == 4) || (coordinate == 3) 
	    	|| (coordinate == 2) || (coordinate == 1) = True
	    | otherwise = False
  		where
	  		row = getRow y board
	  		coordinate = row !! x
	--uiPlaceShips place placedShips
	--	| placedShips == 0 = place
	--	| otherwise = 
	--		do
	--			putStrLn ("Enter the coordinates to fire shot")
	getUserInput :: String -> Int -> Board -> IO [[Int]]
	getUserInput message 0 board = board
	getUserInput message n  board =  
		do
			putStrLn ("Input coordinates for Ship: (" ++ message ++ ") Size : "++ show (n))
			string <- getLine
			let coordinates = convertStringToCoordinates string
			putStrLn "Placing Ships in "
			let x = getX coordinates
			let y = getY coordinates
			let newBoard = placeShipx n x y n board
			printCheatBoard newBoard
			return newBoard
	--getUserInput :: String -> Int -> IO Int
	--getUserInput message  n =  
	--	do
	--		putStrLn ("Input coordinates for Ship: (" ++ message ++ ") Size : "++ show (n))
	--		string <- getLine
	--		let coordinates = convertStringToCoordinates string
	--		putStrLn "Placing Ships in "
	--		let coord = getX coordinates
	--		return coord

	
	sumShipsInRow index (x:xs)
	    | index == 0 = sum
	    | otherwise = sum + sumShipsInRow (index-1) xs
	    where
	     	sum  = isShip x
	isShip place
		| place == 1 = 1
		| place == 2 = 2
		| place == 3 = 3
		| place == 4 = 4
		| place == 5 = 5
		| otherwise = 0
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
	valueOf _ = '*' -- Place Missed
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
	cheatValue _ = '*' -- Place Missed
	--For parsing user input
	convertStringToCoordinates :: String -> Coordinate
	convertStringToCoordinates ['(', x, ',', y, ')'] = ((ord x) - (ord '0'), (ord y) - (ord '0'))
	convertStringToCoordinates _ = (-1, -1)
	getX (x,_) = x
	getY (_,y) = y
	getRow n board = board !! n
	getCoordinate x y board = coordinate
		where 
			coordinate = row !! x
			row = getRow y board
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
	hit x y board
		| isHit == True = placeShipx 1 x y 6 board --Theres is a ship in the coordinate
		| otherwise = placeShipx 1 x y 7 board --You have missed
		where
			coordinate = getCoordinate x y board
			isHit = isShipPlaced x y board
	isGameOver board 
		| sum == gameOverValue = True
		| otherwise = False
		where
			sum = sumShipsInRow 9 (getRow 0 board) + sumShipsInRow 9 (getRow 1 board)	+ sumShipsInRow 9 (getRow 2 board) + sumShipsInRow 9 (getRow 3 board) + sumShipsInRow 9 (getRow 4 board) + sumShipsInRow 9 (getRow 5 board) + sumShipsInRow 9 (getRow 6 board) + sumShipsInRow 9 (getRow 7 board)+ sumShipsInRow 9 (getRow 8 board) + sumShipsInRow 9 (getRow 9 board)
			gameOverValue = (6*5) + (6*4) + (6*3) + (6*2) + (6*2) --5 ships with their corresponding size and 6 is the identifier for being hit
	isShipPlaceable :: Coordinates -> Bool
	isShipPlaceable (x,y,dir) = if x < 1 || x > 10 || y < 1 || y > 10 then False
	                            else True
    


