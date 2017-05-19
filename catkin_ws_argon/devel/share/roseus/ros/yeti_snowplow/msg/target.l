;; Auto-generated. Do not edit!


(when (boundp 'yeti_snowplow::target)
  (if (not (find-package "YETI_SNOWPLOW"))
    (make-package "YETI_SNOWPLOW"))
  (shadow 'target (find-package "YETI_SNOWPLOW")))
(unless (find-package "YETI_SNOWPLOW::TARGET")
  (make-package "YETI_SNOWPLOW::TARGET"))

(in-package "ROS")
;;//! \htmlinclude target.msg.html


(intern "*FORWARD*" (find-package "YETI_SNOWPLOW::TARGET"))
(shadow '*FORWARD* (find-package "YETI_SNOWPLOW::TARGET"))
(defconstant yeti_snowplow::target::*FORWARD* 1)
(intern "*BACKWARD*" (find-package "YETI_SNOWPLOW::TARGET"))
(shadow '*BACKWARD* (find-package "YETI_SNOWPLOW::TARGET"))
(defconstant yeti_snowplow::target::*BACKWARD* -1)
(defclass yeti_snowplow::target
  :super ros::object
  :slots (_dir _location _PID _speed ))

(defmethod yeti_snowplow::target
  (:init
   (&key
    ((:dir __dir) 0)
    ((:location __location) (instance yeti_snowplow::location_point :init))
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
    ;; yeti_snowplow/location_point _location
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
     ;; yeti_snowplow/location_point _location
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
   ;; yeti_snowplow/location_point _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; bool _PID
     (setq _PID (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yeti_snowplow::target :md5sum-) "cf232f9c15f895c77544704e246906a3")
(setf (get yeti_snowplow::target :datatype-) "yeti_snowplow/target")
(setf (get yeti_snowplow::target :definition-)
      "int32 dir
int32 FORWARD=1
int32 BACKWARD=-1
location_point location
bool PID
float64 speed
================================================================================
MSG: yeti_snowplow/location_point
float64 x
float64 y
float64 distance
float64 heading
float64 correctedX
float64 correctedY
int32 id
")



(provide :yeti_snowplow/target "cf232f9c15f895c77544704e246906a3")


