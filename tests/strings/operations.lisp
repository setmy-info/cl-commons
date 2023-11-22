(in-package :cl-user)
(defpackage cl-commons/tests/strings/operations
  (:use :cl :rove)
  (:import-from :cl-commons/strings/operations :concat))
(in-package :cl-commons/tests/strings/operations)

(deftest test-concat
  (testing "concate strings"
    (ok (equal (concat "A" "b") "Ab"))
    (ok (equal (concat "A") "A"))
    (ok (equal (concat nil "A" nil "b") "Ab"))
  )
)
