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

