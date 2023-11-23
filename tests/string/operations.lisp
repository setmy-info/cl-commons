(in-package :cl-user)
(defpackage cl-commons/tests/string/operations
  (:use :cl :rove)
  (:import-from :cl-commons/string/operations 
    :concat
    :ends-with-p
  ))
(in-package :cl-commons/tests/string/operations)

(deftest test-concat
  (testing "concate strings"
    (ok (equal (concat "A" "b") "Ab"))
    (ok (equal (concat "A") "A"))
    (ok (equal (concat nil "A" nil "b") "Ab"))
  )
)

(deftest test-ends-with-p
  (testing "ends-with-p"
    (ok (ends-with-p "World" "World"))
    (ok (ends-with-p "World" "wOrld"))
    (ok (ends-with-p "Hello, World" "World"))
    (ok (ends-with-p "Hello, World" "wOrld"))
    (ok (ends-with-p "Tere, Maailm" "maailm"))
    (ok (not (ends-with-p "Programming" "gram")))
    (ok (not (ends-with-p "Test" "AbcTest")))
    (ok (not (ends-with-p "Test" "TestAbc")))
    (ok (ends-with-p "12345" "5"))
    (ok (ends-with-p "" ""))
  )
)
