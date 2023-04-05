**Project LISP Lights-Out**

**Name: Godwill Afolabi**

**Purpose**

The goal of this project is to program the game "Lights-Out" in the LISP programming language. On a board with a grid of lights that can be turned on or off, the game is played. The objective of the game is to toggle all of the lights on the board off.

**Organization**

First iteration
In the initial iteration of our project, there are three crucial features that let us print the board, turn on one light at a time, and check to see if all the lights are off. The logic of the game will be built upon these functions.

    print-board
        A board is input into the print-board function, which outputs it to the console. The board is shown as a two-dimensional list, with each member representing an off or on light, respectively, as a 0 or 1. The function will show the board to the console in a format that is easy to interpret visually, like a grid of squares.

    toggle-light
        The toggle-light function changes the state of a specific light on a board from on to off or vice versa by taking a board and its coordinates as input. The revised board will be returned as output by the function.  

    all-lights-out-p
        The program is able to verify each light and tell if all the lights are on or off.

**How to use/run**

    To use this program, you can call the print-board function with a list of 9 elements representing the state of the lights on a 3x3 board. The elements of the list should be either 1 if the corresponding light is on, or 0 if the light is off. The print-board function will display the current state of the board in the console.

    To toggle a light on the board, you can call the toggle-light function with tree arguments: the board, the index of the row (0 to 2), and the index of the column (0 to 2). The function will return a new list representing the updated board state with the specified light toggled.

    To toggle an entire row on the board, you can call the toggle-row function with two arguments: the index of the row to toggle (0 to 2), and the current board state represented as a list of 9 elements. The function will return a new list representing the updated board state with the specified row toggled.

    You can use the all-lights-out function to determine if all of the lights on the board are currently off. The function takes a single argument representing the current board state, and returns T if all of the lights are off, and NIL otherwise.