(defpackage #:cl-ping/os/windows
  (:use #:cl)
  (:import-from #:uiop)
  (:export #:ping))
(in-package #:cl-ping/os/windows)

(defun get-ping (ip &optional (repeat 1))
  (with-output-to-string (s)
    (uiop:run-program `(,(uiop:native-namestring #P"C:/Windows/System32/PING.exe")
			 ,ip "-n" ,(write-to-string repeat))
		      :output s
		      :external-format :sjis
		      :error-output :interactive)))

(defun split (x str)
  (let ((pos (position x str)))
    (if pos
	(cons (subseq str 0 pos)
	      (split x (subseq str (1+ pos))))
	(list str))))

(defun parse-responce (res)
  (let ((form (mapcar (lambda (str)
			(string-trim '(#\Newline #\Return) str))
		      (split #\Newline (string-trim '(#\Newline #\Return) res)))))
    (values
     (second form)
     (fifth form)
     (seventh form))))

(defun ping (ip)
  (parse-responce (get-ping ip)))
