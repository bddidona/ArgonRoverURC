; Auto-generated. Do not edit!


(cl:in-package rover_manual-msg)


;//! \htmlinclude vesc_state_stamped.msg.html

(cl:defclass <vesc_state_stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type rover_manual-msg:vesc_state
    :initform (cl:make-instance 'rover_manual-msg:vesc_state)))
)

(cl:defclass vesc_state_stamped (<vesc_state_stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vesc_state_stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vesc_state_stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_manual-msg:<vesc_state_stamped> is deprecated: use rover_manual-msg:vesc_state_stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <vesc_state_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:header-val is deprecated.  Use rover_manual-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <vesc_state_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_manual-msg:state-val is deprecated.  Use rover_manual-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vesc_state_stamped>) ostream)
  "Serializes a message object of type '<vesc_state_stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vesc_state_stamped>) istream)
  "Deserializes a message object of type '<vesc_state_stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vesc_state_stamped>)))
  "Returns string type for a message object of type '<vesc_state_stamped>"
  "rover_manual/vesc_state_stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vesc_state_stamped)))
  "Returns string type for a message object of type 'vesc_state_stamped"
  "rover_manual/vesc_state_stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vesc_state_stamped>)))
  "Returns md5sum for a message object of type '<vesc_state_stamped>"
  "3a2b3a0e5b5f10ce6bbf973d767cdc4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vesc_state_stamped)))
  "Returns md5sum for a message object of type 'vesc_state_stamped"
  "3a2b3a0e5b5f10ce6bbf973d767cdc4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vesc_state_stamped>)))
  "Returns full string definition for message of type '<vesc_state_stamped>"
  (cl:format cl:nil "# Timestamped VESC open source motor controller state (telemetry)~%~%Header  header~%vesc_state state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rover_manual/vesc_state~%# Vedder VESC open source motor controller state (telemetry)~%~%# fault codes~%int32 FAULT_CODE_NONE=0~%int32 FAULT_CODE_OVER_VOLTAGE=1~%int32 FAULT_CODE_UNDER_VOLTAGE=2~%int32 FAULT_CODE_DRV8302=3~%int32 FAULT_CODE_ABS_OVER_CURRENT=4~%int32 FAULT_CODE_OVER_TEMP_FET=5~%int32 FAULT_CODE_OVER_TEMP_MOTOR=6~%~%float64 voltage_input        # input voltage (volt)~%float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)~%float64 current_motor        # motor current (ampere)~%float64 current_input        # input current (ampere)~%float64 speed                # motor electrical speed (revolutions per minute) ~%float64 duty_cycle           # duty cycle (0 to 1)~%float64 charge_drawn         # electric charge drawn from input (ampere-hour)~%float64 charge_regen         # electric charge regenerated to input (ampere-hour)~%float64 energy_drawn         # energy drawn from input (watt-hour)~%float64 energy_regen         # energy regenerated to input (watt-hour)~%float64 displacement         # net tachometer (counts)~%float64 distance_traveled    # total tachnometer (counts)~%int32   fault_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vesc_state_stamped)))
  "Returns full string definition for message of type 'vesc_state_stamped"
  (cl:format cl:nil "# Timestamped VESC open source motor controller state (telemetry)~%~%Header  header~%vesc_state state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rover_manual/vesc_state~%# Vedder VESC open source motor controller state (telemetry)~%~%# fault codes~%int32 FAULT_CODE_NONE=0~%int32 FAULT_CODE_OVER_VOLTAGE=1~%int32 FAULT_CODE_UNDER_VOLTAGE=2~%int32 FAULT_CODE_DRV8302=3~%int32 FAULT_CODE_ABS_OVER_CURRENT=4~%int32 FAULT_CODE_OVER_TEMP_FET=5~%int32 FAULT_CODE_OVER_TEMP_MOTOR=6~%~%float64 voltage_input        # input voltage (volt)~%float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)~%float64 current_motor        # motor current (ampere)~%float64 current_input        # input current (ampere)~%float64 speed                # motor electrical speed (revolutions per minute) ~%float64 duty_cycle           # duty cycle (0 to 1)~%float64 charge_drawn         # electric charge drawn from input (ampere-hour)~%float64 charge_regen         # electric charge regenerated to input (ampere-hour)~%float64 energy_drawn         # energy drawn from input (watt-hour)~%float64 energy_regen         # energy regenerated to input (watt-hour)~%float64 displacement         # net tachometer (counts)~%float64 distance_traveled    # total tachnometer (counts)~%int32   fault_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vesc_state_stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vesc_state_stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'vesc_state_stamped
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
