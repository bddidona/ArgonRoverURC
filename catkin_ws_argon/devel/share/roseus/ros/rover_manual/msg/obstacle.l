;; Auto-generated. Do not edit!


(when (boundp 'rover_manual::obstacle)
  (if (not (find-package "ROVER_MANUAL"))
    (make-package "ROVER_MANUAL"))
  (shadow 'obstacle (find-package "ROVER_MANUAL")))
(unless (find-package "ROVER_MANUAL::OBSTACLE")
  (make-package "ROVER_MANUAL::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude obstacle.msg.html


(defclass rover_manual::obstacle
  :super ros::object
  :slots (_x _y _r _dynamic ))

(defmethod rover_manual::obstacle
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:r __r) 0.0)
    ((:dynamic __dynamic) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _r (float __r))
   (setq _dynamic __dynamic)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:dynamic
   (&optional __dynamic)
   (if __dynamic (setq _dynamic __dynamic)) _dynamic)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _r
    4
    ;; bool _dynamic
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _dynamic
       (if _dynamic (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _dynamic
     (setq _dynamic (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rover_manual::obstacle :md5sum-) "39f935e5dbd01abfb717919f7c2e8837")
(setf (get rover_manual::obstacle :datatype-) "rover_manual/obstacle")
(setf (get rover_manual::obstacle :definition-)
      "float32 x
float32 y
#x and y are relative to robot position and orientation
float32 r
#radius of obstacle
bool dynamic
#if object is or was previously moving, i.e. this is a new obstacle in this position

")



(provide :rover_manual/obstacle "39f935e5dbd01abfb717919f7c2e8837")


