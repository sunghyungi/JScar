;; Auto-generated. Do not edit!


(when (boundp 'Controller::RCdata)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'RCdata (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::RCDATA")
  (make-package "CONTROLLER::RCDATA"))

(in-package "ROS")
;;//! \htmlinclude RCdata.msg.html


(defclass Controller::RCdata
  :super ros::object
  :slots (_steering _throttle _sidemove _record ))

(defmethod Controller::RCdata
  (:init
   (&key
    ((:steering __steering) 0.0)
    ((:throttle __throttle) 0.0)
    ((:sidemove __sidemove) 0.0)
    ((:record __record) 0)
    )
   (send-super :init)
   (setq _steering (float __steering))
   (setq _throttle (float __throttle))
   (setq _sidemove (float __sidemove))
   (setq _record (round __record))
   self)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:sidemove
   (&optional __sidemove)
   (if __sidemove (setq _sidemove __sidemove)) _sidemove)
  (:record
   (&optional __record)
   (if __record (setq _record __record)) _record)
  (:serialization-length
   ()
   (+
    ;; float32 _steering
    4
    ;; float32 _throttle
    4
    ;; float32 _sidemove
    4
    ;; int32 _record
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sidemove
       (sys::poke _sidemove (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _record
       (write-long _record s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _steering
     (setq _steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sidemove
     (setq _sidemove (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _record
     (setq _record (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get Controller::RCdata :md5sum-) "5ea6417589b70ad53907ff4ffc0f21d6")
(setf (get Controller::RCdata :datatype-) "Controller/RCdata")
(setf (get Controller::RCdata :definition-)
      "float32 steering
float32 throttle
float32 sidemove
int32 record
")



(provide :Controller/RCdata "5ea6417589b70ad53907ff4ffc0f21d6")


