; Auto-generated. Do not edit!


(cl:in-package yeti_snowplow-msg)


;//! \htmlinclude wheel_speeds.msg.html

(cl:defclass <wheel_speeds> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0))
)

(cl:defclass wheel_speeds (<wheel_speeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wheel_speeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wheel_speeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yeti_snowplow-msg:<wheel_speeds> is deprecated: use yeti_snowplow-msg:wheel_speeds instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <wheel_speeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:left-val is deprecated.  Use yeti_snowplow-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <wheel_speeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:right-val is deprecated.  Use yeti_snowplow-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wheel_speeds>) ostream)
  "Serializes a message object of type '<wheel_speeds>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wheel_speeds>) istream)
  "Deserializes a message object of type '<wheel_speeds>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wheel_speeds>)))
  "Returns string type for a message object of type '<wheel_speeds>"
  "yeti_snowplow/wheel_speeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wheel_speeds)))
  "Returns string type for a message object of type 'wheel_speeds"
  "yeti_snowplow/wheel_speeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wheel_speeds>)))
  "Returns md5sum for a message object of type '<wheel_speeds>"
  "3a927990ab5d5c3d628e2d52b8533e52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wheel_speeds)))
  "Returns md5sum for a message object of type 'wheel_speeds"
  "3a927990ab5d5c3d628e2d52b8533e52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wheel_speeds>)))
  "Returns full string definition for message of type '<wheel_speeds>"
  (cl:format cl:nil "float32 left~%float32 right~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wheel_speeds)))
  "Returns full string definition for message of type 'wheel_speeds"
  (cl:format cl:nil "float32 left~%float32 right~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wheel_speeds>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wheel_speeds>))
  "Converts a ROS message object to a list"
  (cl:list 'wheel_speeds
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
