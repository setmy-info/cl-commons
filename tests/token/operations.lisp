(in-package :cl-user)
(defpackage cl-commons/tests/token/operations
  (:use :cl :rove)
  (:import-from :cl-commons/token/operations
    :token
    :extend
  )
  (:import-from :cl-commons/output/operations :println)
)
(in-package :cl-commons/tests/token/operations)

(deftest test-token-extend
  (testing "extend token list"
    (let* 
      (
        (token-list (token "Token"))
        (result-list (extend token-list "Extension"))
      )
      (format t "Extended list: ~s.~%" token-list)
      (format t "Extended list: ~s.~%" result-list)
      (ok (equal token-list  (list "Token" "Extension")))
      (ok (equal result-list (list "Token" "Extension")))
    )
  )
)
