module Battleship where
	import Data.Char
	import Data.List
	import System.IO
	
	type Board = [[Int]]
	type Board1 = [[Integer]]
	type Coordinates = (Int, Int, Bool)
	type Coordinate = (Int, Int)


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
				[Integer] -> [Integer] -> Board1
	mkBoard1 row1 row2 row3 row4 row5 row6 row7 row8 row9 row10 = [row1, row2, row3, row4, row5, row6, row7, row8, row9, row10]
	board1 = mkBoard1 list list list list list list list list list list 

	mkBoard2 [[rows]] = [[rows]]
	updatedBoard n newRow board= board1

					--row0 = getRow 0 board
	     			--row1 = getRow 1 board
	     			--row2 = getRow 2 board
	     			--row3 = getRow 3 board
	     			--row4 = getRow 4 board
	     			--row5 = getRow 5 board
	     			--row6 = getRow 6 board
	     			--row7 = getRow 7 board
	     			--row8 = getRow 8 board
	     			--row9 = getRow 9 board
	--mkBoard1 n = 
	--	if n >= 0 
	--		then take n (repeat (take n (repeat 0)))
	--	else [[0]]

	board = mkBoard 10
	getRow n board = board !! n
	--printRow n = [ toString x | x <- getRow n]
	--placeShip ::  Coordinate -> Board
	tuple1 = (1,2,True)
	getX (x,_,_) = x
	getY (_,y,_) = y
	getDir (_,_,dir) = dir
	--isShipPlaceable n x y dir board
	convertStringToCoordinates :: String -> Coordinate
	convertStringToCoordinates ['(', x, ',', y, ')'] = ((ord x) - (ord '0') + 1, (ord y) - (ord '0') + 1)
	convertStringToCoordinates _ = (-1, -1)

	list1 = [1,2,3,4,5,6,7,8,9,10]
	replaceValues n x y ship board
	     | index == x = return newBoard
	     | otherwise = 
	     	do 
	     		replaceValues (n-1) x y ship newBoard
	     		where 
	     			newBoard = insertRowAt y newRow board
	     			newRow = replace index ship row
	     			row = getRow y board
	     			index = (n-1)+x

	placeShip n x y ship board = [replace x ship row]
		where 
			row = board !! y
			ship = 1


	replace index newVal (x:xs)
	     | index == 0 = newVal:xs
	     | otherwise = x:replace (index-1) newVal xs

	-- Cheat Places     
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

 --   play :: [Board] -> [[Ship]] -> IO ()
	--play board ships = do
 --       printField (last board) (last ships)
 --       (newField, newShipList) <- fireWithEveryShip (last board, last ships) 1
 --       if length newShipList == 0 then
 --           do
 --             putStrLn ("\n Game over!\n")
 --             printField newField newShipList
 --       else
 --           play [newField] [newShipList]

 --   inputShip :: [Ship] -> Int -> IO Ship
	--inputShip placedShips len = do
	--    putStrLn ("Enter the coordinates of the ship of length " ++ show len ++ "?")
	--    string <- getLine
	--    let stringCoords = splitCoordinatesInString string
	--    let coords = map convertStringToCoordinates stringCoords
	--    if validateShipCoordinates placedShips coords len then
	--        return coords
	--    else
	--        inputShip placedShips len
	--let (as,bs) = splitAt z xs   in   as ++ [new_element] ++ bs
	insertRowAt :: Int -> [Integer]-> Board1 -> Board1 
	insertRowAt z y board = as ++ [y] ++ cs
                where 
                  	(as,bs) = splitAt z board
                	cs = drop 1 bs
	--let (ys,zs) = splitAt n xs   in   ys ++ (tail zs)
