module Main where
	import Battleship

	main = do
		putStrLn "Where do you want to place your ship Size x y dir"
		coordinates <- getLine
		putStr("Size:")
		--print(x)	
		--putStr("x:")
		--print(coordinates !! 2)	
		--putStr("y:")
		--print(coordinates !! 4)	
		--putStr("dir:")
		--print(coordinates !! 6)	