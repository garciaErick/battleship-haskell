--This Code was done in collaboration between 
--Erick Garcia and Julio Lopez Molinar
module BattleshipFinal where
	import Data.Char
	import Data.List
	import System.IO
	import System.Random
	
	type Board = [[Int]]
	type Coordinates = (Int, Int, Bool)
	type Coordinate = (Int, Int) 
	--Generate a Random Number to place ships at a random place
	random a b = 
		do
			g <- getStdGen	
			randomRIO (a,b)
	--Replacing a value in a list
	replace index newVal (x:xs)
	     | index == 0 = newVal:xs
	     | otherwise = x:replace (index-1) newVal xs
	sumShipsInRow index (x:xs)
	    | index == 0 = sum
	    | otherwise = sum + sumShipsInRow (index-1) xs
	    where
	     	sum  = isShip x
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
	mkBoard :: [Int] -> [Int] -> [Int] -> [Int] ->
				[Int] -> [Int] -> [Int] -> [Int] -> 
				[Int] -> [Int] -> Board
	mkBoard row1 row2 row3 row4 row5 row6 row7 row8 row9 row10 = [row1, row2, row3, row4, row5, row6, row7, row8, row9, row10]
	--Ship Functions
	--Insert a [Int] at a [[Int]] (Board)
	insertRowAt :: Int -> [Int]-> Board -> Board 
	insertRowAt z y board = as ++ [y] ++ cs
                where 
                  	(as,bs) = splitAt z board
                	cs = drop 1 bs    
	placeShipx n x y ship board =
			let row = getRow y board in
				let index = (n-1) + x in
					let newRow = replace index ship row in
						let newBoard = insertRowAt y newRow board in
							if index == x then newBoard
					     		else 
					     			if(isShipPlaceableX n x y ship board) 
					     				then placeShipx (n-1) x y ship newBoard
					     				else board
	placeShipy n x y ship board =
		let row = getRow y board in
			let index = (n-1) + x in
				let newRow = replace index ship row in
					let newBoard = insertRowAt y newRow board in
						if index == x then newBoard
				     		else 
				     			if(isShipPlaceableY n x y ship board) 
				     				then placeShipy (n-1) (x+1) (y+1) ship newBoard
				     				else board
	hit x y board
		| isHit == True = placeShipx 1 x y 6 board --Theres is a ship in the coordinate
		| (getCoordinate x y board) == 6 = placeShipx 1 x y 6 board --You have already hit this place
		| otherwise = placeShipx 1 x y 7 board --You have missed
		where
			coordinate = getCoordinate x y board
			isHit = isShipPlaced x y board
	isGameOver board 
		| sum == gameOverValue = True
		| otherwise = False
		where
			sum = sumShipsInRow 9 (getRow 0 board) + sumShipsInRow 9 (getRow 1 board)	+ sumShipsInRow 9 (getRow 2 board) + sumShipsInRow 9 (getRow 3 board) + sumShipsInRow 9 (getRow 4 board) + sumShipsInRow 9 (getRow 5 board) + sumShipsInRow 9 (getRow 6 board) + sumShipsInRow 9 (getRow 7 board)+ sumShipsInRow 9 (getRow 8 board) + sumShipsInRow 9 (getRow 9 board)
			gameOverValue = 16 --5 ships = 2 + 2 + 3 + 4 + 5
	isShip place
		| place == 6 = 1
		| otherwise = 0
	isShipPlaced x y board
	    | (coordinate == 5) || (coordinate == 4) || (coordinate == 3) 
	    	|| (coordinate == 2) || (coordinate == 1) = True
	    | otherwise = False
  		where
	  		row = getRow y board
	  		coordinate = row !! x

	validateCoordinate :: Int -> Int -> Board -> Bool
	validateCoordinate x y board = if ((x < 0 || x > 9) && (y < 0 || y > 9))
									then  
										False
	                            else 
                            		do
										if isShipPlaced x y board then False
											else True
	isShipPlaceableX n x y ship board
	     | n == 0 = True
	     | otherwise = do 
	     	if (validateCoordinate x y board) && (x+n <= 10) && (y+n <= 10)
	     		then
	     					isShipPlaceableX (n-1) (x+1) y ship board
			else False
	isShipPlaceableY n x y ship board
	     | n == 0 = True
	     | otherwise = do 
	     	if (validateCoordinate x y board) && (x+n <= 10) && (y+n <= 10)
	     		then
	     					isShipPlaceableY (n-1) x (y+1) ship board
			else False
	--Print Regular Board
	printBoard :: [[Int]] -> IO ()
	printBoard = putStrLn . unlines . listValues
	listValues :: [[Int]] -> [String]
	listValues = map (map valueOf)
	valueOf :: Int -> Char
	valueOf 0 = '.' -- Default Place
	valueOf 1 = '.' -- Minesweeper
	valueOf 2 = '.' -- Submarine
	valueOf 3 = '.' -- Frigate
	valueOf 4 = '.' -- Battleship
	valueOf 5 = '.' -- Aircraft Carrier
	valueOf 6 = 'x' -- Place Hit
	valueOf _ = 'O' -- Place Missed
	--Print Cheat Board  
	printCheatBoard :: [[Int]] -> IO ()
	printCheatBoard = putStrLn . unlines . listCheatValues
	listCheatValues :: [[Int]] -> [String]
	listCheatValues = map (map cheatValue)
	cheatValue :: Int -> Char
	cheatValue 0 = '.' -- Default Place
	cheatValue 1 = 'M' -- Minesweeper
	cheatValue 2 = 'S' -- Submarine
	cheatValue 3 = 'F' -- Frigate
	cheatValue 4 = 'B' -- Battleship
	cheatValue 5 = 'A' -- Aircraft Carrier
	cheatValue 6 = 'x' -- Place Hit
	cheatValue _ = 'O' -- Place Missed
	--Playing Battleship without cheating
	uiHitShips :: Board -> IO String
	uiHitShips board =  
		do
			printBoard board
			if isGameOver board
				then 
					do
						return "Game Over"	
				else 
					do
						putStrLn ("Input coordinates to hit")
						string <- getLine
						let coordinates = convertStringToCoordinates string
						putStrLn "Coordinate has been hit"
						let x = getX coordinates
						let y = getY coordinates
						let newBoard = hit x y board
						uiHitShips newBoard
	--Playing Battleship showing ship positions
	uiHitPractice :: Board -> IO String
	uiHitPractice board =  
		do
			printCheatBoard board
			if isGameOver board
				then 
					do
						return "Game Over"	
				else 
					do
						putStrLn ("Input coordinates to hit")
						string <- getLine
						let coordinates = convertStringToCoordinates string
						putStrLn "Coordinate has been hit"
						let x = getX coordinates
						let y = getY coordinates
						let newBoard = hit x y board
						uiHitPractice newBoard
	--Function to place ships, but for demo purposes ships are placed by themselves
	uiPlaceShips :: String -> Int -> Board -> IO [[Int]]
	uiPlaceShips message n  board =  
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
	--For debugging purposes and main interaction
	list = take 10 [0,0..0]
 	a1 = [5,5,5,5,5,0,0,0,0,0]
 	b1 = [4,4,4,4,0,0,0,0,0,0]
 	f1 = [3,3,3,0,0,0,0,0,0,0]
 	s1 = [2,2,0,0,0,0,0,0,0,0]
 	m1 = [1,1,0,0,0,0,0,0,0,0]
 	row1 = [0,0,0,0,0,2,2,0,0,0]
 	row2 = [0,0,4,4,4,4,0,0,0,0]
 	row3 = [3,3,3,0,0,0,0,0,0,0]
 	row4 = [1,1,0,5,5,5,5,5,0,0]
 	boardWithShipsInOrder = mkBoard a1 b1 f1 s1 m1 list list list list list
	boardWithShips = mkBoard list row1 row2 list list list row4 list row3 list
	board = mkBoard list list list list list list list list list list