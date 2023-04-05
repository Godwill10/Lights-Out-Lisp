**Project LISP Lights-Out**

**Name: Godwill Afolabi**

The goal of this project is to program the game "Lights-Out" in the LISP programming language. On a board with a grid of lights that can be turned on or off, the game is played. The objective of the game is to toggle all of the lights on the board off.

First iteration
In the initial iteration of our project, there are three crucial features that let us print the board, turn on one light at a time, and check to see if all the lights are off. The logic of the game will be built upon these functions.

    print-board
        A board is input into the print-board function, which outputs it to the console. The board is shown as a two-dimensional list, with each member representing an off or on light, respectively, as a 0 or 1. The function will show the board to the console in a format that is easy to interpret visually, like a grid of squares.

    toggle-light
        The toggle-light function changes the state of a specific light on a board from on to off or vice versa by taking a board and its coordinates as input. The revised board will be returned as output by the function.  

    all-lights-out-p
        The program is able to verify each light and tell if all the lights are on or off.