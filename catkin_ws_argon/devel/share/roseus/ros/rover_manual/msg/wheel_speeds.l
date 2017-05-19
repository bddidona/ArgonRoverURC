;; Auto-generated. Do not edit!


(when (boundp 'rover_manual::wheel_speeds)
  (if (not (find-package "ROVER_MANUAL"))
    (make-package "ROVER_MANUAL"))
  (shadow 'wheel_speeds (find-package "ROVER_MANUAL")))
(unless (find-package "ROVER_MANUAL::WHEEL_SPEEDS")
  (make-package "ROVER_MANUAL::WHEEL_SPEEDS"))

(in-package "ROS")
;;//! \htmlinclude wheel_speeds.msg.html


(defclass rover_manual::wheel_speeds
  :super ros::object
  :slots (_left _right ))

(defmethod rover_manual::wheel_speeds
  (:init
   (&key
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _right (float __right))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; float32 _left
    4
    ;; float32 _right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rover_manual::wheel_speeds :md5sum-) "3a927990ab5d5c3d628e2d52b8533e52")
(setf (get rover_manual::wheel_speeds :datatype-) "rover_manual/wheel_speeds")
(setf (get rover_manual::wheel_speeds :definition-)
      "float32 left
float32 right
")



(provide :rover_manual/wheel_speeds "3a927990ab5d5c3d628e2d52b8533e52")


