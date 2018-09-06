(defpackage #:cl-ping
  (:nicknames #:cl-ping/main)
  #+(or win32 windows)
  (:import-from #:cl-ping/os/windows
		#:ping)
  (:export #:ping))

#-(or win32 windows)
(error "Unsupported operating system.")
