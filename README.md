**Project LISP Lights-Out**

**Name: Godwill Afolabi**

**Purpose**

The goal of this project is to program the game "Lights-Out" in the LISP programming language. On a board with a grid of lights that can be turned on or off, the game is played. The objective of the game is to toggle all of the lights on the board off.

**Organization**

First iteration
In the initial iteration of our project, there are three crucial features that let us print the board, turn on one light at a time, and check to see if all the lights are off. The logic of the game will be built upon these functions.

    print-board
        A board is input into the print-board function, which outputs it to the console. The board is shown as a two-dimensional list, with each member representing an off or on light, respectively, as a 0 or 1. The function will show the board to the console in a format that is easy to interpret visually, like a grid of squares.

    turn-off-light
        A function that takes an integer parameter representing a location on a light board and turns off the light at that location. It returns a new board with the specified light turned off.

    all-lights-off-p
        A function that takes a list parameter representing a light board and returns a boolean value indicating whether all the lights on the board are off (true) or not (false). The function works by checking each element of the list to see if it is equal to 0, indicating that the light is off. It returns true if all the elements are 0, and false otherwise.

    get-input 
        Takes an integer from the user.

**How to use/run**

    To run this code, you will need to have a Lisp interpreter or environment installed on your system. Once you have that, you can open the Lisp file in your environment or interpreter and load it.

After loading the file, you can call the functions defined in the file from the Lisp REPL (read-eval-print loop). For example, you can call the print-board function by passing a list representing the game board as an argument.

To get input from the user, you can call the get-input function, which will prompt the user to enter an integer between 1 and 9. The function will continue to prompt the user until a valid input is provided.

To turn off a light on the game board, you can call the turn-off-light function, passing the location of the light to be turned off as well as the game board.

Finally, to check if all the lights on the board are off, you can call the all-lights-off-p function, passing the game board as an argument. The function will return T if all lights are off (0), and NIL otherwise.