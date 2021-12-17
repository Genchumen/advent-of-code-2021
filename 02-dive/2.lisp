(defvar *horizontal-position* 0)
(defvar *depth* 0)
(defvar *aim* 0)

(defun forward (x)
  (incf *horizontal-position* x)
  (incf *depth* (* *aim* x)))
(defun down (x)
  (incf *aim* x))
(defun up (x)
  (decf *aim* x))

; It's trivial to wrap these in parentheses in Lisp
(forward 5)
(down 5)
(forward 8)
(up 3)
(down 8)
(forward 2)
