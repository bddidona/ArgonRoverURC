;; Auto-generated. Do not edit!


(when (boundp 'rover_manual::target)
  (if (not (find-package "ROVER_MANUAL"))
    (make-package "ROVER_MANUAL"))
  (shadow 'target (find-package "ROVER_MANUAL")))
(unless (find-package "ROVER_MANUAL::TARGET")
  (make-package "ROVER_MANUAL::TARGET"))

(in-package "ROS")
;;//! \htmlinclude target.msg.html


(intern "*FORWARD*" (find-package "ROVER_MANUAL::TARGET"))
(shadow '*FORWARD* (find-package "ROVER_MANUAL::TARGET"))
(defconstant rover_manual::target::*FORWARD* 1)
(intern "*BACKWARD*" (find-package "ROVER_MANUAL::TARGET"))
(shadow '*BACKWARD* (find-package "ROVER_MANUAL::TARGET"))
(defconstant rover_manual::target::*BACKWARD* -1)
(defclass rover_manual::target
  :super ros::object
  :slots (_dir _location _PID _speed ))

(defmethod rover_manual::target
  (:init
   (&key
    ((:dir __dir) 0)
    ((:location __location) (instance rover_manual::location_point :init))
    ((:PID __PID) nil)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _dir (round __dir))
   (setq _location __location)
   (setq _PID __PID)
   (setq _speed (float __speed))
   self)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:PID
   (&optional __PID)
   (if __PID (setq _PID __PID)) _PID)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int32 _dir
    4
    ;; rover_manual/location_point _location
    (send _location :serialization-length)
    ;; bool _PID
    1
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dir
       (write-long _dir s)
     ;; rover_manual/location_point _location
       (send _location :serialize s)
     ;; bool _PID
       (if _PID (write-byte -1 s) (write-byte 0 s))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dir
     (setq _dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rover_manual/location_point _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; bool _PID
     (setq _PID (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rover_manual::target :md5sum-) "cf232f9c15f895c77544704e246906a3")
(setf (get rover_manual::target :datatype-) "rover_manual/target")
(setf (get rover_manual::target :definition-)
      "int32 dir
int32 FORWARD=1
int32 BACKWARD=-1
location_point location
bool PID
float64 speed
================================================================================
MSG: rover_manual/location_point
float64 x
float64 y
float64 distance
float64 heading
float64 correctedX
float64 correctedY
int32 id
")



(provide :rover_manual/target "cf232f9c15f895c77544704e246906a3")


