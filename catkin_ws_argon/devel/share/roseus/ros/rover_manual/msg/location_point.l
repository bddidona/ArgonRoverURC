;; Auto-generated. Do not edit!


(when (boundp 'rover_manual::location_point)
  (if (not (find-package "ROVER_MANUAL"))
    (make-package "ROVER_MANUAL"))
  (shadow 'location_point (find-package "ROVER_MANUAL")))
(unless (find-package "ROVER_MANUAL::LOCATION_POINT")
  (make-package "ROVER_MANUAL::LOCATION_POINT"))

(in-package "ROS")
;;//! \htmlinclude location_point.msg.html


(defclass rover_manual::location_point
  :super ros::object
  :slots (_x _y _distance _heading _correctedX _correctedY _id ))

(defmethod rover_manual::location_point
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:distance __distance) 0.0)
    ((:heading __heading) 0.0)
    ((:correctedX __correctedX) 0.0)
    ((:correctedY __correctedY) 0.0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _distance (float __distance))
   (setq _heading (float __heading))
   (setq _correctedX (float __correctedX))
   (setq _correctedY (float __correctedY))
   (setq _id (round __id))
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
  (:correctedX
   (&optional __correctedX)
   (if __correctedX (setq _correctedX __correctedX)) _correctedX)
  (:correctedY
   (&optional __correctedY)
   (if __correctedY (setq _correctedY __correctedY)) _correctedY)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
    ;; float64 _correctedX
    8
    ;; float64 _correctedY
    8
    ;; int32 _id
    4
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
     ;; float64 _correctedX
       (sys::poke _correctedX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _correctedY
       (sys::poke _correctedY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _id
       (write-long _id s)
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
   ;; float64 _correctedX
     (setq _correctedX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _correctedY
     (setq _correctedY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rover_manual::location_point :md5sum-) "06cbcc71d2b6df75dbf930c8371e4b8c")
(setf (get rover_manual::location_point :datatype-) "rover_manual/location_point")
(setf (get rover_manual::location_point :definition-)
      "float64 x
float64 y
float64 distance
float64 heading
float64 correctedX
float64 correctedY
int32 id
")



(provide :rover_manual/location_point "06cbcc71d2b6df75dbf930c8371e4b8c")


