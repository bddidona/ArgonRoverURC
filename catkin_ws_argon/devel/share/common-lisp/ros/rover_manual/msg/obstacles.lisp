; Auto-generated. Do not edit!


(cl:in-package rover_manual-msg)


;//! \htmlinclude obstacles.msg.html

(cl:defclass <obstacles> (roslisp-msg-protocol:ros-message)
  ((obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector rover_manual-msg:obstacle)
   :initform (cl:make-array 0 :element-type 'rover_manual-msg:obstacle :initial-element (cl:make-instance 'rover_manual-msg:obstacle))))
)

(cl:defclass obstacles (<obstacles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obstacles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obstacles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_manual-msg:<obstacles> is deprecated: use rover_manual-msg:obstacles instead.")))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <obstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:obstacles-val is deprecated.  Use rover_manual-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obstacles>) ostream)
  "Serializes a message object of type '<obstacles>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obstacles>) istream)
  "Deserializes a message object of type '<obstacles>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rover_manual-msg:obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obstacles>)))
  "Returns string type for a message object of type '<obstacles>"
  "rover_manual/obstacles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obstacles)))
  "Returns string type for a message object of type 'obstacles"
  "rover_manual/obstacles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obstacles>)))
  "Returns md5sum for a message object of type '<obstacles>"
  "c1b14cf1472bdc7f2a4a7c32f2465997")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obstacles)))
  "Returns md5sum for a message object of type 'obstacles"
  "c1b14cf1472bdc7f2a4a7c32f2465997")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obstacles>)))
  "Returns full string definition for message of type '<obstacles>"
  (cl:format cl:nil "obstacle[] obstacles~%~%================================================================================~%MSG: rover_manual/obstacle~%float32 x~%float32 y~%#x and y are relative to robot position and orientation~%float32 r~%#radius of obstacle~%bool dynamic~%#if object is or was previously moving, i.e. this is a new obstacle in this position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obstacles)))
  "Returns full string definition for message of type 'obstacles"
  (cl:format cl:nil "obstacle[] obstacles~%~%================================================================================~%MSG: rover_manual/obstacle~%float32 x~%float32 y~%#x and y are relative to robot position and orientation~%float32 r~%#radius of obstacle~%bool dynamic~%#if object is or was previously moving, i.e. this is a new obstacle in this position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obstacles>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obstacles>))
  "Converts a ROS message object to a list"
  (cl:list 'obstacles
    (cl:cons ':obstacles (obstacles msg))
))
