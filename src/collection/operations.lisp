;;;; Collection operations.

(in-package :cl-user)
(defpackage cl-commons/collection/operations
  (:use :cl)  
  (:export :apply-concat-many)
  (:export :product)
  (:export :product-as-pairs)
  (:export :pushe)
  (:import-from :cl-commons/string/operations :concat)
)
(in-package :cl-commons/collection/operations)

(defun apply-concat-many (&rest lists)
    "Concatenate many lists together"
    (let* (
        (input-list (or lists '()))
        (result-list '()))
      (loop for a-list in input-list
        do (setq result-list (append result-list a-list)))
      result-list))

(defun product (dimension-a dimension-b &optional product-function)
  "Produce pairs from dimensions and concatenate results"
  (let* ((product-fun (or product-function #'concat)))
    (mapcar (lambda (pair) (apply product-fun pair))
          (product-as-pairs dimension-a dimension-b))))

(defun product-as-pairs (dimension-a dimension-b)
  "Produce pairs from dimensions"
  (loop for x in dimension-a
        append (loop for y in dimension-b
                     collect (list x y))))

(defun pushe (a-list value)
    (nconc a-list (list value))
    a-list)

(defun npush (a-list position value &optional default-value)
  "Add a value to the specified position in the list, filling intermediate positions with nil."
  (let* (
    (length (length a-list))
    (missing-elements (- position length))
    (new-elements (make-list missing-elements :initial-element default-value))
  )
  (nconc a-list new-elements)
  (pushe a-list value)
  a-list))
