module Main where
	import Battleship

	main = do
		putStrLn "Where do you want to place your ship Size x y dir"
		coordinates <- getLine

		putStr("Size:")
		print(convertStringToCoordinates coordinates)	
		--putStr("x:")
		--print(x)	
		--putStr("y:")
		--print(y)	
		--putStr("dir:")
		--print(dir)	