(in-package :cl-user)
(defpackage cl-commons/tests/output/operations
  (:use :cl
        :rove)
        (:import-from :cl-commons/output/operations :println))
(in-package :cl-commons/tests/output/operations)

(deftest test-println
  (testing "println shoul handle parameters correctly"
  (let 
    (
      (result   (println "Number ~D ~a." 123 "buks"))
    )
    (ok (equal result   "Number 123 buks.#\linefeed"))
  )))
