(in-package :cl-user)
(defpackage cl-commons/tests/collections/operations
  (:use :cl
        :rove)
        (:import-from :cl-commons/collections/operations :apply-concat-many)
        (:import-from :cl-commons/collections/operations :product)
        (:import-from :cl-commons/collections/operations :product-as-pairs)
        (:import-from :cl-commons/collections/operations :pushe)
        (:import-from :cl-commons/collections/operations :npush)
        (:import-from :cl-commons/strings/operations :+empty-string+)
        )
(in-package :cl-commons/tests/collections/operations)

(deftest test-apply-concat-many-1
  (testing "should apply-concat-many many lists together"
  (let 
    (
      (result-list   (apply-concat-many (list 1 2 3) (list 4 5 6)))
      (result-list-2 (apply-concat-many '()))
      (result-list-3 (apply-concat-many nil))
    )
    (print 
      (format
        nil
        "apply-concat-many list: ~s.~%"
        result-list))
    (ok (equal result-list   '(1 2 3 4 5 6)))
    (ok (equal result-list-2 '()))
    (ok (equal result-list-3 '()))
  )))

(deftest test-product-as-pairs
  (testing "product-as-pairs"
  (let 
    (
      (result-list   (product-as-pairs (list 1 2 3) (list 4 5 6)))
    )
    (print 
      (format
        nil
        "Paired list: ~s.~%"
        result-list))
    (ok (equal result-list   (list (list 1 4) (list 1 5) (list 1 6) (list 2 4) (list 2 5) (list 2 6) (list 3 4) (list 3 5) (list 3 6))))
  )))

(deftest test-product
  (testing "product"
  (let 
    (
      (result-list   (product (list "a" "b" "c") (list "1" "2" "3")))
    )
    (print 
      (format
        nil
        "Multiplied dimentsions: ~s.~%"
        result-list))
    (ok (equal result-list   (list "a1" "a2" "a3" "b1" "b2" "b3" "c1" "c2" "c3")))
  )))

(deftest test-product-2
  (testing "product"
  (let 
    (
      (result-list   (product (list 1 2 3) (list 4 5 6) #'*))
    )
    (print 
      (format
        nil
        "Multiplied dimentsions 2: ~s.~%"
        result-list))
    (ok (equal result-list   (list 4 5 6 8 10 12 12 15 18)))
  )))

(deftest test-pushe
  (testing "pushe"
  (let 
    (
      (result-list   (pushe (list 1 2 3) 4))
    )
    (print 
      (format
        nil
        "Multiplied dimentsions 2: ~s.~%"
        result-list))
    (ok (equal result-list   (list 1 2 3 4)))
  )))

(deftest test-npush
  (testing "npush"
  (let 
    (
      (result-list   (npush (list 1 2 3) 6 4))
    )
    (print 
      (format
        nil
        "npush: ~s.~%"
        result-list))
    (ok (equal result-list   (list 1 2 3 nil nil nil 4)))
  )))

(deftest test-npush-2
  (testing "npush-2"
  (let 
    (
      (result-list   (npush (list 1 2 3) 6 4 0))
    )
    (print 
      (format
        nil
        "npush: ~s.~%"
        result-list))
    (ok (equal result-list   (list 1 2 3 0 0 0 4)))
  )))
