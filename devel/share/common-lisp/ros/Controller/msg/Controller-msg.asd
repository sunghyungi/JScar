
(cl:in-package :asdf)

(defsystem "Controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RCdata" :depends-on ("_package_RCdata"))
    (:file "_package_RCdata" :depends-on ("_package"))
  ))