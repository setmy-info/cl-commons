;;;; String operations.

(in-package :cl-user)
(defpackage cl-commons/string/operations
  (:use :cl)
  (:export 
          :concat 
          :+comma-string+
          :+empty-string+
          :ends-with-p
  )
)
(in-package :cl-commons/string/operations)

(defconstant +comma-string+ ",")
(defconstant +empty-string+ "")

(defun concat (&rest strings)
  "Concatenate and return an arbitrary number of strings as one string."
  (apply #'concatenate 'string strings))

(defun ends-with-p (text-string ending)
  "Checks if TEXT-STRING ends with the specified ENDING string, ignoring case."
  (let*
    (
      (text-string-length (length text-string))
      (ending-length (length ending))
    )
    (and 
      (>= text-string-length ending-length)
      (string-equal (subseq text-string (- text-string-length ending-length)) ending)
    )
  )
)
