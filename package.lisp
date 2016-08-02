;;;; package.lisp

(defpackage #:numbers
  (:use #:cl :structure)
  (:export :range
           :mappend
           :cross-product
           :random-list
           :random-distribute-list))

