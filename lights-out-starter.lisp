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


(defun toggle-light (board row col)
  (if (= row 0)  ; if we are at the first row of the board 
      (cons (toggle-row (car board) col) (cdr board)) ; toggle the light at the specified column in the first row
      (cons (car board); otherwise, recursively toggle the light in the remaining rows of the board
            (toggle-light (cdr board) (- row 1) col))))

(defun toggle-row (row col)
  (if (= col 0)  ; if we are at the specified column in the row
      (if (= (car row) 0) 1 0) ; toggle the light
      (cons (car row); otherwise, recursively toggle the light in the remaining columns of the row
            (toggle-row (cdr row) (- col 1)))))

(defun all-lights-out-p (board)
  ; If the board is empty, all lights are out and return true.
  (cond
    ((null board) t)
    ((or (not (listp board)) (not (integerp (car board)))) nil)  ; If the board is not a list or its first element is not an integer, return nil.
    ((zerop (car board)) (all-lights-out-p (cdr board))) ; If the first element of the board is zero, check the rest of the board.
    (t nil))) ; If none of the above conditions match, return false

(defun get-input (prompt)
  (format t prompt)
  (let ((user-input (read-line)))
    (if (string= user-input "") ;; if user input is empty, ask again
        (get-input prompt)
          (if (and user-num (<= 0 user-num 1)) ;; if input is an integer between 0 and 1, return it
              user-num
              (get-input "Input must be either 0 or 1. Enter again: ")))))) ;; ask again if input is invalid