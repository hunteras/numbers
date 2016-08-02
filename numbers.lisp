;;;; numbers.lisp

(in-package #:numbers)

;;; "numbers" goes here. Hacks and glory await!

(defun range (n &optional (start 1) (step 1))
  "Get a list of n numbers from start with specific step."
  (accumulate n start #'(lambda (x) (+ x step))))
    
(defun mappend (fn l)
  (apply #'append (mapcar fn l)))

(defun cross-product (fn xlist ylist)
  (mappend #'(lambda (y)
               (mapcar #'(lambda (x) (funcall fn x y)) xlist))
           ylist))

(defun fib (n)
  "Get the nth fibnacci number."
  (cond ((= 0 n) 1)
        ((= 1 n) 2)
        (t (+ (fib (- n 1)) (fib (- n 2))))))

(defun random-list (n)
  "Get n random number as a list."
  (accumulate n (random n) #'(lambda (x) (random n))))


(defun pick (i l)
  "Pick the nth value, return it and others."
  (let ((e (nth i l)))
    (values e (remove e l))))
      
(defun random-distribute-list (n)
  "Get a list with numbers less than n distributed randomly along the list."
  (labels ((iter (l acc)
             (if (null l)
                 acc
                 (multiple-value-bind (item others) (pick (random (length l)) l)
                   (iter others (cons item acc))))))
    (iter (range n) nil)))


