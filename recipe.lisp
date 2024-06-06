;;This is recipe of lisp program

;;comment
#|
  comment
|#

;;calculate
#|
(+ 1783 813)
(- 1783 813)
(* 1783 813)
(/ 1783 813)
(expt 2 5)
|#

;;declaration
#|
(setf a 1783)
(let ((var 1783)) (format nil "~a" var))
|#
;;print
#|
(print "Hello World")

(format t "Hello World")

(format nil "I like ~a" 8)

(format t "~$" pi)

(format t "~d" 1783813)

(format t "~:d" 1783813)

(format t "~@d" 1783813)

(format nil "~b" 1783)

(format nil "~o" 1783)

(format nil "~x" 1783)

(format nil "~r" 1783)

(format nil "~(~a~)" "HELLO")
|#

;;I/O
#|
(read-line var)

(open "c:\\Users\\fujitihi\\lisp\\tutorial\\sample.txt")

(let ((in (open "c:\\Users\\fujitihi\\lisp\\tutorial\\sample.txt" :if-does-not-exist nil)))
(format t "~a~%" (read-line in))
(close in))

(let ((in (open "c:\\Users\\fujitihi\\lisp\\tutorial\\sample.txt" :if-does-not-exist nil)))
(when in
(loop for line = (read-line in nil)
while line do (format t "~a~%" line))
(close in)))

(with-open-file (stream "c:\\Users\\fujitihi\\lisp\\tutorial\\sample.txt")
(format t "~a~%" (read-line stream)))

(with-open-file (stream "c:\\Users\\fujitihi\\lisp\\tutorial\\test.txt" :direction :output :if-exists :supersede)
(format stream "I wrote this sentence in tutorial.lisp!"))
|#

;;and or not

;;if

;;iteration
