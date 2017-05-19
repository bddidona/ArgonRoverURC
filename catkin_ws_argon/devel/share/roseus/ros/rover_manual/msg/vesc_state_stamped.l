;; Auto-generated. Do not edit!


(when (boundp 'rover_manual::vesc_state_stamped)
  (if (not (find-package "ROVER_MANUAL"))
    (make-package "ROVER_MANUAL"))
  (shadow 'vesc_state_stamped (find-package "ROVER_MANUAL")))
(unless (find-package "ROVER_MANUAL::VESC_STATE_STAMPED")
  (make-package "ROVER_MANUAL::VESC_STATE_STAMPED"))

(in-package "ROS")
;;//! \htmlinclude vesc_state_stamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rover_manual::vesc_state_stamped
  :super ros::object
  :slots (_header _state ))

(defmethod rover_manual::vesc_state_stamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance rover_manual::vesc_state :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rover_manual/vesc_state _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rover_manual/vesc_state _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rover_manual/vesc_state _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get rover_manual::vesc_state_stamped :md5sum-) "3a2b3a0e5b5f10ce6bbf973d767cdc4d")
(setf (get rover_manual::vesc_state_stamped :datatype-) "rover_manual/vesc_state_stamped")
(setf (get rover_manual::vesc_state_stamped :definition-)
      "# Timestamped VESC open source motor controller state (telemetry)

Header  header
vesc_state state

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: rover_manual/vesc_state
# Vedder VESC open source motor controller state (telemetry)

# fault codes
int32 FAULT_CODE_NONE=0
int32 FAULT_CODE_OVER_VOLTAGE=1
int32 FAULT_CODE_UNDER_VOLTAGE=2
int32 FAULT_CODE_DRV8302=3
int32 FAULT_CODE_ABS_OVER_CURRENT=4
int32 FAULT_CODE_OVER_TEMP_FET=5
int32 FAULT_CODE_OVER_TEMP_MOTOR=6

float64 voltage_input        # input voltage (volt)
float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)
float64 current_motor        # motor current (ampere)
float64 current_input        # input current (ampere)
float64 speed                # motor electrical speed (revolutions per minute) 
float64 duty_cycle           # duty cycle (0 to 1)
float64 charge_drawn         # electric charge drawn from input (ampere-hour)
float64 charge_regen         # electric charge regenerated to input (ampere-hour)
float64 energy_drawn         # energy drawn from input (watt-hour)
float64 energy_regen         # energy regenerated to input (watt-hour)
float64 displacement         # net tachometer (counts)
float64 distance_traveled    # total tachnometer (counts)
int32   fault_code

")



(provide :rover_manual/vesc_state_stamped "3a2b3a0e5b5f10ce6bbf973d767cdc4d")


