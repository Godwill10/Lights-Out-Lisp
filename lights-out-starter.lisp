;; lights-out-starter.lisp
;; The board is represented by a list 9 long
;; which is a 3x3 board.
;;
(defun print-board (board)
  (if (= 0 (mod (length board) 3))
    (format t "~% ~a" (car board))
    (format t " ~a" (car board))
  )
  (if (null (rest board))
      nil
      (print-board (rest board)))
)

;; Takes input from the user
(defun get-input (prompt)
  (format t prompt)
  (let ((user-input (read)))
    (if (string= user-input "") ;; if user input is empty, ask again
        (get-input prompt)
          (if (and user-num (<= 1 user-num 9)) ;; if input is an integer between 1 and 9, return it
              user-num
              (get-input "Input must be an integer between 1 and 9. Enter again: "))))) ;; ask again if input is invalid


 ;; Turn off the light on the board at the specified location.
(defun turn-off-light (location board)
  (cond
    ((null board) nil)  ; If the board is empty, return nil.
    ((eql (car board) location)  ; If the first element is the location, return the rest of the board.
     (cdr board))
    (t  ; Otherwise, prepend the first element to the result of the recursive call on the rest of the board.
     (cons (car board) (turn-off-light location (cdr board))))))

 ;; Returns T if all the lights on the board are off (0), else returns NIL.
(defun all-lights-off-p (board)
  (cond
    ((null board) T)
    ((= (car board) 0) (all-lights-off-p (cdr board)))
    (t NIL)
  )
)


;; starts the game for user to play on their own
;; Defines a function called `start-lights-out-game`
(defun start-lights-out-game ()
  ;; Creates a local variable `board` with an initial board state and `moves` with an initial value of zero
  (let ((board '(1 0 0 0 1 1 1 0 1))
        (moves 0))
    (format t "Welcome to Lights Out! The goal of the game is to turn off all the lights.~%")

    ;; Defines an inner function called `play-game` that takes the current `board` state and number of `moves` as arguments
    (defun play-game (board moves)
      ;; Checks if all the lights are turned off
      (cond (not (all-lights-off-p board))
        ;; If some lights are still on, prompts the user to enter the location of the light they want to turn off
        (format t "Current board state:~%")
        (print-board board)
        (let ((input (get-input "Enter the location of the light you want to turn off (1-9): ")))
          ;; Calls `turn-off-light` function with the user input and current board state to update the board state, and increments `moves` by 1
          (play-game (turn-off-light input board) (+ moves 1)))))

    ;; Calls `play-game` with the initial `board` state and `moves`
    (play-game board moves)
    (format t "Congratulations! You won in ~a moves.~%" moves)))


;; lets a user play with the computer
(defun play-lights-out-with-computer ()
  ;; Creates a local variable `board` with an initial board state and `moves` with an initial value of zero
  (let ((board '(1 0 0 0 1 1 1 0 1))
        (moves 0))
    (format t "Welcome to Lights Out! The goal of the game is to turn off all the lights.~%")

    ;; Defines an inner function called `play-game` that takes the current `board` state and number of `moves` as arguments
    (defun play-game (board moves)
      ;; Checks if all the lights are turned off
      (cond ((not (all-lights-off-p board)) 
             ;; If some lights are still on, prompts the user to enter the location of the light they want to turn off
             (format t "Current board state:~%")
             (print-board board)
             (let ((input (get-input "Enter the location of the light you want to turn off (1-9): ")))
               ;; Calls `turn-off-light` function with the user input and current board state to update the board state, and increments `moves` by 1
               (play-game (turn-off-light input board) (+ moves 1))))
            (t
             (format t "Congratulations! You won in ~a moves.~%" moves))))

    ;; Calls `play-game` with the initial `board` state and `moves`
    (play-game board moves)
    (format t "Congratulations! You won in ~a moves.~%" moves)))