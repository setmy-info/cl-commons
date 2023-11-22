;;;; String operations.

(in-package :cl-user)
(defpackage cl-commons/string/operations
  (:use :cl)
  (:export 
          :concat 
          :+comma-string+
          :+empty-string+
  )
)
(in-package :cl-commons/string/operations)

(defconstant +comma-string+ ",")
(defconstant +empty-string+ "")

(defun concat (&rest strings)
  "Concatenate and return an arbitrary number of strings as one string."
  (apply #'concatenate 'string strings))