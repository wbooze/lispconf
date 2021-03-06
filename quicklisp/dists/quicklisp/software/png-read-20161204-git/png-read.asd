(asdf:defsystem png-read
  :version "0.3.1"
  :author "Jakub Higersberger <ramarren@gmail.com>"
  :description "A library for reading PNG files."
  :licence "BSD-style"
  :components ((:file "package")
               (:file "png-state" :depends-on ("package"))
               (:file "deinterlace" :depends-on ("package" "png-state"))
               (:file "util" :depends-on ("package"))
               (:file "decode" :depends-on ("package" "util" "png-state" "basic-chunks"))
               (:file "crc" :depends-on ("package"))
               (:file "critical-chunks" :depends-on ("package" "png-state" "util"))
               (:file "ancillary-chunks" :depends-on ("package" "png-state" "util"))
               (:file "basic-chunks" :depends-on ("package" "crc" "critical-chunks" "ancillary-chunks" "png-state" "util")))
  :depends-on (:iterate :chipz :babel))
