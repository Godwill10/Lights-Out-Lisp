**Project LISP Lights-Out**

**Name: Godwill Afolabi**

**Purpose**

The goal of this project is to program the game "Lights-Out" in the LISP programming language. On a board with a grid of lights that can be turned on or off, the game is played. The objective of the game is to toggle all of the lights on the board off.

**Organization**

First iteration
In the initial iteration of our project, there are three crucial features that let us print the board, turn on one light at a time, and check to see if all the lights are off. The logic of the game will be built upon these functions.

    print-board: Takes a board as input and prints it in a 3x3 format.

    get-input: Takes a prompt as input and returns user input if it is a valid integer between 1 and 9.

    turn-off-light: Takes a location and board as input and returns a new board with the light at the 
    specified location turned off.

    all-lights-off-p: Takes a board as input and returns T if all the lights on the board are off (0), else returns NIL.

    start-lights-out-game: Starts the game by initializing the board, displaying a welcome message, and calling the play-game function.

    play-lights-out-with-computer: When called, sets a board and allow the user to play with an AI (computer).

**How to use/run**

How to run the "Lights Out" game implementation in Lisp:

1. Open a Lisp environment.
2. Load the "lights-out-starter.lisp" file using the LOAD command.
3. Call the start-lights-out-game function in the Lisp environment to start the game.
    1. Follow the prompts to enter the location of the light you want to turn off.
    2. Continue playing until all the lights on the board are turned off.
    3. The game will end and display the number of moves taken to complete the game.
4. Call the play-lights-out-with-computer function in the Lisp environment to start the game.
    1. Follow the prompts to enter the location of the light you want to turn off.
    2. Continue playing until all the lights on the board are turned off.
    3. The game will end and display the number of moves taken to complete the game.
