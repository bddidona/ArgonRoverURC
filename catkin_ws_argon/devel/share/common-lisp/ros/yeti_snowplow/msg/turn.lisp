; Auto-generated. Do not edit!


(cl:in-package yeti_snowplow-msg)


;//! \htmlinclude turn.msg.html

(cl:defclass <turn> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass turn (<turn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yeti_snowplow-msg:<turn> is deprecated: use yeti_snowplow-msg:turn instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <turn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:angle-val is deprecated.  Use yeti_snowplow-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <turn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:stop-val is deprecated.  Use yeti_snowplow-msg:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turn>) ostream)
  "Serializes a message object of type '<turn>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turn>) istream)
  "Deserializes a message object of type '<turn>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turn>)))
  "Returns string type for a message object of type '<turn>"
  "yeti_snowplow/turn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turn)))
  "Returns string type for a message object of type 'turn"
  "yeti_snowplow/turn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turn>)))
  "Returns md5sum for a message object of type '<turn>"
  "3d13a914ba0846a78d8f6016249a48c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turn)))
  "Returns md5sum for a message object of type 'turn"
  "3d13a914ba0846a78d8f6016249a48c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turn>)))
  "Returns full string definition for message of type '<turn>"
  (cl:format cl:nil "float32 angle~%bool stop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turn)))
  "Returns full string definition for message of type 'turn"
  (cl:format cl:nil "float32 angle~%bool stop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turn>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turn>))
  "Converts a ROS message object to a list"
  (cl:list 'turn
    (cl:cons ':angle (angle msg))
    (cl:cons ':stop (stop msg))
))
