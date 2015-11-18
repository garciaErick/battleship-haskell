CS 3360 - Design and Implementation of Programming Languages

	   PROJECT 3: FUNCTIONAL PROGRAMMING USING HASKELL
		 (File $Date: 2015/11/11 21:37:37 $)

Due: November 24, 2015

This assignment may be done individually or in pairs. If you do it in
a pair, however, your pair for this assignment should be different
from that for the previous assignment.

The purpose of this project is to understand the concepts of
functional programming and have a taste of it in Haskell.

In this assignment, you are to develop a Haskell program for playing a
simple Battleship game. You shall implement a single player game by
providing a battleship board of 10x10 squares, where five different
ships (of sizes 5, 4, 3, 2 and 2) are secretly placed. A player makes
shots to squares in the board to sink ships. A shot is either a hit on
a ship or a miss. When all the squares of a ship has been hit, the
ship is sunk. When all the ships have been sunk, the game is over.

Part I. (60 points) Develop a Haskell module named Board to model a
Battleship board. The module should define the following functions.

1. (5 points) Creating a board and checking the game status
   mkBoard n
   Return an empty nxn board, where n is a positive number.

   isGameOver board
   True if all the ships placed on the given board have been sunk.

2. (20 points) Placing a ship
   isShipPlaceable n x y dir board
   Can a ship of size n be placed at the square (x,y) of the given 
   board? X and y are 1-based column and row indices of the start 
   square, and dir denotes the direction (True for horizontal and
   False for vertical).

   placeShip n x y dir board
   Place a ship of size n at the square (x,y) of the given board
   horizontally or vertically. A new board is returned.

3. (15 points) Hitting a place
   isHit x y board
   Is the sequare (x,y) already hit?

   hitBoard x y board
   Hit the square at the position (x,y) of the given board, where x 
   and y are 1-based column and row indices. A new board is returned.

4. (20 points) Printing a board
   boardToStr marker board
   Return a string representation of the given board produced with
   the given marker. A marker is a function that takes a square of
   a board and returns its string representation. 

   sqToStr n
   sqToStrCheat n
   Return a string representation of a given square (value). The cheat
   version reveals a hidden ship placed on the square if exists.

Part II. (40 points) Develop a Haskell module named Main that provides
a console-based UI. The module should define all the I/O functions
listed below.

5. (15 points) Placing ships.
   placeShips ships board
   Place the given ships to the given board randomly. The first 
   argument (ships) is a list of numbers, each specifying the size
   of a ship to be placed, e.g., [5, 4, 3, 2, 2] for one ship of
   size 5, one ship of size 4, and one ship of size 3, and two
   ships of size 2.

6. (15 points) Reading inputs.
   getXY board
   Read and return a pair of (x,y) specifying the 1-based column and 
   row indices of a board square to hit. The valid values for x and y
   are 1..n, where n is the size of the board. If input values are 
   invalid or the specified square are already hit, the function should
   prompt the user for new values until valid values are entered.

7. (10 points) Main entry point functions.
    main
    mainCheat
    Play one round of Battleship game. The dimension of the board is
    10x10, and five different ships (of sizes 5, 4, 3, 2, and 2) are
    placed or hidden in the board at random positions. The first
    function (main) doesn't reveal the locations of hidden ships
    whereas the second (mainCheat) does.

8. (bonus points) Add other interesting features of your own.

TESTING

   You code should run with the Hugs Haskell interpreter available
   from https://www.haskell.org/hugs/. If you use the Haskell Platform
   available from https://www.haskell.org/platform/, do not use any
   ghci-specific features.

WHAT AND HOW TO TURN IN
   
   Submit your source code files along with any supporting documents
   through the Assignment Submission page found in the Homework
   section of the course website. The page will ask you to zip all
   your files and upload a single archive file. The zip archive file
   should include only a single directory named YourFirstNameLastName
   which contains all your source code files and other support files
   needed to run your program. You should submit your work before the
   class time on the due date.

GRADING

   You will be graded, in part, on how clear your code is.
   Excessively long code will be penalized: don't repeat code in
   multiple places. Your code should be well documented and sensibly
   indented so it is easy to read.

   Be sure your name is in the comments in your code.