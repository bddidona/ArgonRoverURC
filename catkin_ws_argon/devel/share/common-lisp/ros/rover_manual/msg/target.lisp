; Auto-generated. Do not edit!


(cl:in-package rover_manual-msg)


;//! \htmlinclude target.msg.html

(cl:defclass <target> (roslisp-msg-protocol:ros-message)
  ((dir
    :reader dir
    :initarg :dir
    :type cl:integer
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type rover_manual-msg:location_point
    :initform (cl:make-instance 'rover_manual-msg:location_point))
   (PID
    :reader PID
    :initarg :PID
    :type cl:boolean
    :initform cl:nil)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass target (<target>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_manual-msg:<target> is deprecated: use rover_manual-msg:target instead.")))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:dir-val is deprecated.  Use rover_manual-msg:dir instead.")
  (dir m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:location-val is deprecated.  Use rover_manual-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'PID-val :lambda-list '(m))
(cl:defmethod PID-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:PID-val is deprecated.  Use rover_manual-msg:PID instead.")
  (PID m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:speed-val is deprecated.  Use rover_manual-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<target>)))
    "Constants for message type '<target>"
  '((:FORWARD . 1)
    (:BACKWARD . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'target)))
    "Constants for message type 'target"
  '((:FORWARD . 1)
    (:BACKWARD . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target>) ostream)
  "Serializes a message object of type '<target>"
  (cl:let* ((signed (cl:slot-value msg 'dir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PID) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target>) istream)
  "Deserializes a message object of type '<target>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
    (cl:setf (cl:slot-value msg 'PID) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target>)))
  "Returns string type for a message object of type '<target>"
  "rover_manual/target")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target)))
  "Returns string type for a message object of type 'target"
  "rover_manual/target")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target>)))
  "Returns md5sum for a message object of type '<target>"
  "cf232f9c15f895c77544704e246906a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target)))
  "Returns md5sum for a message object of type 'target"
  "cf232f9c15f895c77544704e246906a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target>)))
  "Returns full string definition for message of type '<target>"
  (cl:format cl:nil "int32 dir~%int32 FORWARD=1~%int32 BACKWARD=-1~%location_point location~%bool PID~%float64 speed~%================================================================================~%MSG: rover_manual/location_point~%float64 x~%float64 y~%float64 distance~%float64 heading~%float64 correctedX~%float64 correctedY~%int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target)))
  "Returns full string definition for message of type 'target"
  (cl:format cl:nil "int32 dir~%int32 FORWARD=1~%int32 BACKWARD=-1~%location_point location~%bool PID~%float64 speed~%================================================================================~%MSG: rover_manual/location_point~%float64 x~%float64 y~%float64 distance~%float64 heading~%float64 correctedX~%float64 correctedY~%int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target>))
  "Converts a ROS message object to a list"
  (cl:list 'target
    (cl:cons ':dir (dir msg))
    (cl:cons ':location (location msg))
    (cl:cons ':PID (PID msg))
    (cl:cons ':speed (speed msg))
))
