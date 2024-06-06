;;;;This is recipe of lisp program

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
(mod 1783 813)
(expt 2 5)
(= 1783 813)
(> 1783 813)
(< 1783 813)
|#

;;declaration
#|
(let ((var 1783)) (format nil "~a" var))
(defparameter *reset* 0) ;This must be initialize
(defvar *no-reset* 0)    ;This must not be initialize
(defconstant *constant* 1783) ;This cannot be changed
(setf var 1783)
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
#|
(not nil)
(and (= 1783 1783) (= 813 813))
(or (= 1783 1783) (= 1783 813))
|#

;;if
#|
(if (> 1783 813) "Correct" "Wrong")
(if (> 1783 813)
(progn
(incf count)
"You are right!"))
|#

;;iteration
#|
(dotimes (i 100) (print i))
(dolist (x `(1783 813 2258)) (print x))
|#
