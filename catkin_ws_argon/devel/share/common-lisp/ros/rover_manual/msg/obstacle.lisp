; Auto-generated. Do not edit!


(cl:in-package rover_manual-msg)


;//! \htmlinclude obstacle.msg.html

(cl:defclass <obstacle> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (dynamic
    :reader dynamic
    :initarg :dynamic
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass obstacle (<obstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_manual-msg:<obstacle> is deprecated: use rover_manual-msg:obstacle instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:x-val is deprecated.  Use rover_manual-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:y-val is deprecated.  Use rover_manual-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:r-val is deprecated.  Use rover_manual-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'dynamic-val :lambda-list '(m))
(cl:defmethod dynamic-val ((m <obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:dynamic-val is deprecated.  Use rover_manual-msg:dynamic instead.")
  (dynamic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obstacle>) ostream)
  "Serializes a message object of type '<obstacle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dynamic) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obstacle>) istream)
  "Deserializes a message object of type '<obstacle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'dynamic) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obstacle>)))
  "Returns string type for a message object of type '<obstacle>"
  "rover_manual/obstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obstacle)))
  "Returns string type for a message object of type 'obstacle"
  "rover_manual/obstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obstacle>)))
  "Returns md5sum for a message object of type '<obstacle>"
  "39f935e5dbd01abfb717919f7c2e8837")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obstacle)))
  "Returns md5sum for a message object of type 'obstacle"
  "39f935e5dbd01abfb717919f7c2e8837")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obstacle>)))
  "Returns full string definition for message of type '<obstacle>"
  (cl:format cl:nil "float32 x~%float32 y~%#x and y are relative to robot position and orientation~%float32 r~%#radius of obstacle~%bool dynamic~%#if object is or was previously moving, i.e. this is a new obstacle in this position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obstacle)))
  "Returns full string definition for message of type 'obstacle"
  (cl:format cl:nil "float32 x~%float32 y~%#x and y are relative to robot position and orientation~%float32 r~%#radius of obstacle~%bool dynamic~%#if object is or was previously moving, i.e. this is a new obstacle in this position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obstacle>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'obstacle
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':r (r msg))
    (cl:cons ':dynamic (dynamic msg))
))
