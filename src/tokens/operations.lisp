;;;; tokenization helper functions

(in-package :cl-user)
(defpackage cl-commons/tokens/operations
  (:use :cl)
  (:export :token)
  (:export :extend)
  (:import-from :cl-commons/collections/operations :pushe)
)
(in-package :cl-commons/tokens/operations)

(defun token (tocen)
    (list tocen))

(defun extend (a-list value)
    (pushe a-list value))
