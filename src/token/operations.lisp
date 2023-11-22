;;;; tokenization helper functions

(in-package :cl-user)
(defpackage cl-commons/token/operations
  (:use :cl)
  (:export :token)
  (:export :extend)
  (:import-from :cl-commons/collection/operations :pushe)
)
(in-package :cl-commons/token/operations)

(defun token (tocen)
    (list tocen))

(defun extend (a-list value)
    (pushe a-list value))
