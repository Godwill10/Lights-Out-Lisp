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

(defun toggle-light (board index)
  (cond ((< index 0) board) ; If the index is negative, return the original board.
        ((>= index (length board)) board) ; If the index is greater than or equal to the length of the board, return the original board.
        (t (let ((current-state (nth index board))) ; Get the current state of the cell.
             (setf (nth index board) (if (eq current-state '1) '0 '1))) ; Toggle the state of the cell.
             board)))) ; Return the modified board.

(defun is-light-out (cell)
  (eq cell '0))  ;; Returns `t` if `cell` is the symbol `0`, and `nil` otherwise.

(defun all-lights-out (board)
  (every #'is-light-out board)) ;; Returns `t` if all cells in `board` are '0', and `nil` otherwise.
