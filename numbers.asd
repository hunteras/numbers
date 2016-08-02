;;;; numbers.asd

(asdf:defsystem #:numbers
  :serial t
  :description "Describe numbers here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on (:structure)
  :components ((:file "package")
               (:file "numbers")))

