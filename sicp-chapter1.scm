#!/usr/bin/emacs --script


(setq inhibit-message t)
(setq message-log-max nil)  ;; Disable message logging


(setq x 3)
(setq y 4)
(setq z 5)
(+ x y z)

(let ((x 10))
  (+ x 4))

(defun fibonacci (n)
  "Calculate the Nth Fibonacci number recursively."
  (if (or (= n 0) (= n 1))
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))
  )
)


(fibonacci x)
;; Result: 5
(fibonacci 10)
;; Result: 55


(defun fibonacci-iterative (n)
  "Calculate the Nth Fibonacci number iteratively."
  (let ((a 0)
        (b 1)
        (i 2)
        temp)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (t
           (while (< i n)
             (setq temp (+ a b))
             (setq a b)
             (setq b temp)
             (setq i (1+ i)))
           b))
  )
)

(fibonacci-iterative 11)
(setq res (fibonacci-iterative 10))
(message "res")



(defun square (x) (* x x))

(square 2)
(square 10)
(square 11)
(square 12)

(square 134)

(setq mysquare (square 10232))

(defun sump-of (x y) (+ x y))

(sump-of 10 20)

(+ (square x) (square y))
(+ 2 2)

(defun sum-of-squares (x y)
  (+ (square x) (square y)))

(sum-of-squares 2 2)
(sum-of-squares 2 4)
(sum-of-squares 2 3)

(defun f (a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 2)




