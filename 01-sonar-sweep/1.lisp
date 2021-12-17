(defun interval (depths)
  (if (cadr depths)
      (- (cadr depths) (car depths))
      nil))

(defun count-increases (depths)
  (let ((counter 0))
    (dolist (n (maplist #'interval depths))
      (if n (and (> n 0) (incf counter))))
    counter))

; Insert input list here
(print (count-increases '(199 200 208 210 200 207 240 269 260 263)))
