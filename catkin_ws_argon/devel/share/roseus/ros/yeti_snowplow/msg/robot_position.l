;; Auto-generated. Do not edit!


(when (boundp 'yeti_snowplow::robot_position)
  (if (not (find-package "YETI_SNOWPLOW"))
    (make-package "YETI_SNOWPLOW"))
  (shadow 'robot_position (find-package "YETI_SNOWPLOW")))
(unless (find-package "YETI_SNOWPLOW::ROBOT_POSITION")
  (make-package "YETI_SNOWPLOW::ROBOT_POSITION"))

(in-package "ROS")
;;//! \htmlinclude robot_position.msg.html


(defclass yeti_snowplow::robot_position
  :super ros::object
  :slots (_x _y _distance _heading ))

(defmethod yeti_snowplow::robot_position
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:distance __distance) 0.0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _distance (float __distance))
   (setq _heading (float __heading))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _distance
    8
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yeti_snowplow::robot_position :md5sum-) "30c3e373d4e8c564504331ea5d44f519")
(setf (get yeti_snowplow::robot_position :datatype-) "yeti_snowplow/robot_position")
(setf (get yeti_snowplow::robot_position :definition-)
      "float64 x
float64 y
float64 distance
float64 heading
")



(provide :yeti_snowplow/robot_position "30c3e373d4e8c564504331ea5d44f519")


