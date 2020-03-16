; Auto-generated. Do not edit!


(cl:in-package Controller-msg)


;//! \htmlinclude RCdata.msg.html

(cl:defclass <RCdata> (roslisp-msg-protocol:ros-message)
  ((steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (sidemove
    :reader sidemove
    :initarg :sidemove
    :type cl:float
    :initform 0.0)
   (record
    :reader record
    :initarg :record
    :type cl:integer
    :initform 0))
)

(cl:defclass RCdata (<RCdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RCdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RCdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Controller-msg:<RCdata> is deprecated: use Controller-msg:RCdata instead.")))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <RCdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Controller-msg:steering-val is deprecated.  Use Controller-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <RCdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Controller-msg:throttle-val is deprecated.  Use Controller-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'sidemove-val :lambda-list '(m))
(cl:defmethod sidemove-val ((m <RCdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Controller-msg:sidemove-val is deprecated.  Use Controller-msg:sidemove instead.")
  (sidemove m))

(cl:ensure-generic-function 'record-val :lambda-list '(m))
(cl:defmethod record-val ((m <RCdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Controller-msg:record-val is deprecated.  Use Controller-msg:record instead.")
  (record m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RCdata>) ostream)
  "Serializes a message object of type '<RCdata>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sidemove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'record)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RCdata>) istream)
  "Deserializes a message object of type '<RCdata>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sidemove) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'record) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RCdata>)))
  "Returns string type for a message object of type '<RCdata>"
  "Controller/RCdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RCdata)))
  "Returns string type for a message object of type 'RCdata"
  "Controller/RCdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RCdata>)))
  "Returns md5sum for a message object of type '<RCdata>"
  "5ea6417589b70ad53907ff4ffc0f21d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RCdata)))
  "Returns md5sum for a message object of type 'RCdata"
  "5ea6417589b70ad53907ff4ffc0f21d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RCdata>)))
  "Returns full string definition for message of type '<RCdata>"
  (cl:format cl:nil "float32 steering~%float32 throttle~%float32 sidemove~%int32 record~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RCdata)))
  "Returns full string definition for message of type 'RCdata"
  (cl:format cl:nil "float32 steering~%float32 throttle~%float32 sidemove~%int32 record~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RCdata>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RCdata>))
  "Converts a ROS message object to a list"
  (cl:list 'RCdata
    (cl:cons ':steering (steering msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':sidemove (sidemove msg))
    (cl:cons ':record (record msg))
))
