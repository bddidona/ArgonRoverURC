; Auto-generated. Do not edit!


(cl:in-package yeti_snowplow-msg)


;//! \htmlinclude joystick.msg.html

(cl:defclass <joystick> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:boolean
    :initform cl:nil)
   (B
    :reader B
    :initarg :B
    :type cl:boolean
    :initform cl:nil)
   (X
    :reader X
    :initarg :X
    :type cl:boolean
    :initform cl:nil)
   (Y
    :reader Y
    :initarg :Y
    :type cl:boolean
    :initform cl:nil)
   (LB
    :reader LB
    :initarg :LB
    :type cl:boolean
    :initform cl:nil)
   (RB
    :reader RB
    :initarg :RB
    :type cl:boolean
    :initform cl:nil)
   (Back
    :reader Back
    :initarg :Back
    :type cl:boolean
    :initform cl:nil)
   (Start
    :reader Start
    :initarg :Start
    :type cl:boolean
    :initform cl:nil)
   (Guide
    :reader Guide
    :initarg :Guide
    :type cl:boolean
    :initform cl:nil)
   (LS
    :reader LS
    :initarg :LS
    :type cl:boolean
    :initform cl:nil)
   (RS
    :reader RS
    :initarg :RS
    :type cl:boolean
    :initform cl:nil)
   (LeftStick_LR
    :reader LeftStick_LR
    :initarg :LeftStick_LR
    :type cl:float
    :initform 0.0)
   (LeftStick_UD
    :reader LeftStick_UD
    :initarg :LeftStick_UD
    :type cl:float
    :initform 0.0)
   (RightStick_LR
    :reader RightStick_LR
    :initarg :RightStick_LR
    :type cl:float
    :initform 0.0)
   (RightStick_UD
    :reader RightStick_UD
    :initarg :RightStick_UD
    :type cl:float
    :initform 0.0)
   (LT
    :reader LT
    :initarg :LT
    :type cl:float
    :initform 0.0)
   (RT
    :reader RT
    :initarg :RT
    :type cl:float
    :initform 0.0)
   (DPad_LR
    :reader DPad_LR
    :initarg :DPad_LR
    :type cl:float
    :initform 0.0)
   (DPad_UD
    :reader DPad_UD
    :initarg :DPad_UD
    :type cl:float
    :initform 0.0))
)

(cl:defclass joystick (<joystick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joystick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joystick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yeti_snowplow-msg:<joystick> is deprecated: use yeti_snowplow-msg:joystick instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:A-val is deprecated.  Use yeti_snowplow-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:B-val is deprecated.  Use yeti_snowplow-msg:B instead.")
  (B m))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:X-val is deprecated.  Use yeti_snowplow-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:Y-val is deprecated.  Use yeti_snowplow-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'LB-val :lambda-list '(m))
(cl:defmethod LB-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:LB-val is deprecated.  Use yeti_snowplow-msg:LB instead.")
  (LB m))

(cl:ensure-generic-function 'RB-val :lambda-list '(m))
(cl:defmethod RB-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:RB-val is deprecated.  Use yeti_snowplow-msg:RB instead.")
  (RB m))

(cl:ensure-generic-function 'Back-val :lambda-list '(m))
(cl:defmethod Back-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:Back-val is deprecated.  Use yeti_snowplow-msg:Back instead.")
  (Back m))

(cl:ensure-generic-function 'Start-val :lambda-list '(m))
(cl:defmethod Start-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:Start-val is deprecated.  Use yeti_snowplow-msg:Start instead.")
  (Start m))

(cl:ensure-generic-function 'Guide-val :lambda-list '(m))
(cl:defmethod Guide-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:Guide-val is deprecated.  Use yeti_snowplow-msg:Guide instead.")
  (Guide m))

(cl:ensure-generic-function 'LS-val :lambda-list '(m))
(cl:defmethod LS-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:LS-val is deprecated.  Use yeti_snowplow-msg:LS instead.")
  (LS m))

(cl:ensure-generic-function 'RS-val :lambda-list '(m))
(cl:defmethod RS-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:RS-val is deprecated.  Use yeti_snowplow-msg:RS instead.")
  (RS m))

(cl:ensure-generic-function 'LeftStick_LR-val :lambda-list '(m))
(cl:defmethod LeftStick_LR-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:LeftStick_LR-val is deprecated.  Use yeti_snowplow-msg:LeftStick_LR instead.")
  (LeftStick_LR m))

(cl:ensure-generic-function 'LeftStick_UD-val :lambda-list '(m))
(cl:defmethod LeftStick_UD-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:LeftStick_UD-val is deprecated.  Use yeti_snowplow-msg:LeftStick_UD instead.")
  (LeftStick_UD m))

(cl:ensure-generic-function 'RightStick_LR-val :lambda-list '(m))
(cl:defmethod RightStick_LR-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:RightStick_LR-val is deprecated.  Use yeti_snowplow-msg:RightStick_LR instead.")
  (RightStick_LR m))

(cl:ensure-generic-function 'RightStick_UD-val :lambda-list '(m))
(cl:defmethod RightStick_UD-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:RightStick_UD-val is deprecated.  Use yeti_snowplow-msg:RightStick_UD instead.")
  (RightStick_UD m))

(cl:ensure-generic-function 'LT-val :lambda-list '(m))
(cl:defmethod LT-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:LT-val is deprecated.  Use yeti_snowplow-msg:LT instead.")
  (LT m))

(cl:ensure-generic-function 'RT-val :lambda-list '(m))
(cl:defmethod RT-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:RT-val is deprecated.  Use yeti_snowplow-msg:RT instead.")
  (RT m))

(cl:ensure-generic-function 'DPad_LR-val :lambda-list '(m))
(cl:defmethod DPad_LR-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:DPad_LR-val is deprecated.  Use yeti_snowplow-msg:DPad_LR instead.")
  (DPad_LR m))

(cl:ensure-generic-function 'DPad_UD-val :lambda-list '(m))
(cl:defmethod DPad_UD-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yeti_snowplow-msg:DPad_UD-val is deprecated.  Use yeti_snowplow-msg:DPad_UD instead.")
  (DPad_UD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joystick>) ostream)
  "Serializes a message object of type '<joystick>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'A) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'B) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'X) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LB) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RB) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Back) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Start) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Guide) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LS) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RS) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftStick_LR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftStick_UD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightStick_LR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightStick_UD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DPad_LR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DPad_UD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joystick>) istream)
  "Deserializes a message object of type '<joystick>"
    (cl:setf (cl:slot-value msg 'A) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'B) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'X) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LB) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RB) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Back) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Start) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Guide) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LS) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RS) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftStick_LR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftStick_UD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightStick_LR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightStick_UD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DPad_LR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DPad_UD) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joystick>)))
  "Returns string type for a message object of type '<joystick>"
  "yeti_snowplow/joystick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joystick)))
  "Returns string type for a message object of type 'joystick"
  "yeti_snowplow/joystick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joystick>)))
  "Returns md5sum for a message object of type '<joystick>"
  "2638f5eded79bb441e076bbda419a866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joystick)))
  "Returns md5sum for a message object of type 'joystick"
  "2638f5eded79bb441e076bbda419a866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joystick>)))
  "Returns full string definition for message of type '<joystick>"
  (cl:format cl:nil "bool A~%bool B~%bool X~%bool Y~%bool LB~%bool RB~%bool Back~%bool Start~%bool Guide~%bool LS~%bool RS~%~%float32 LeftStick_LR~%float32 LeftStick_UD~%float32 RightStick_LR~%float32 RightStick_UD~%float32 LT~%float32 RT~%float32 DPad_LR~%float32 DPad_UD~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joystick)))
  "Returns full string definition for message of type 'joystick"
  (cl:format cl:nil "bool A~%bool B~%bool X~%bool Y~%bool LB~%bool RB~%bool Back~%bool Start~%bool Guide~%bool LS~%bool RS~%~%float32 LeftStick_LR~%float32 LeftStick_UD~%float32 RightStick_LR~%float32 RightStick_UD~%float32 LT~%float32 RT~%float32 DPad_LR~%float32 DPad_UD~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joystick>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joystick>))
  "Converts a ROS message object to a list"
  (cl:list 'joystick
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':LB (LB msg))
    (cl:cons ':RB (RB msg))
    (cl:cons ':Back (Back msg))
    (cl:cons ':Start (Start msg))
    (cl:cons ':Guide (Guide msg))
    (cl:cons ':LS (LS msg))
    (cl:cons ':RS (RS msg))
    (cl:cons ':LeftStick_LR (LeftStick_LR msg))
    (cl:cons ':LeftStick_UD (LeftStick_UD msg))
    (cl:cons ':RightStick_LR (RightStick_LR msg))
    (cl:cons ':RightStick_UD (RightStick_UD msg))
    (cl:cons ':LT (LT msg))
    (cl:cons ':RT (RT msg))
    (cl:cons ':DPad_LR (DPad_LR msg))
    (cl:cons ':DPad_UD (DPad_UD msg))
))
