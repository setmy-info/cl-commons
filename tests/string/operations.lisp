(in-package :cl-user)
(defpackage cl-commons/tests/string/operations
  (:use :cl :rove)
  (:import-from :cl-commons/string/operations :concat))
(in-package :cl-commons/tests/string/operations)

(deftest test-concat
  (testing "concate strings"
    (ok (equal (concat "A" "b") "Ab"))
    (ok (equal (concat "A") "A"))
    (ok (equal (concat nil "A" nil "b") "Ab"))
  )
)
