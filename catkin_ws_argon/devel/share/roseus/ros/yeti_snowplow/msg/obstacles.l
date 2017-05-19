;; Auto-generated. Do not edit!


(when (boundp 'yeti_snowplow::obstacles)
  (if (not (find-package "YETI_SNOWPLOW"))
    (make-package "YETI_SNOWPLOW"))
  (shadow 'obstacles (find-package "YETI_SNOWPLOW")))
(unless (find-package "YETI_SNOWPLOW::OBSTACLES")
  (make-package "YETI_SNOWPLOW::OBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude obstacles.msg.html


(defclass yeti_snowplow::obstacles
  :super ros::object
  :slots (_obstacles ))

(defmethod yeti_snowplow::obstacles
  (:init
   (&key
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance yeti_snowplow::obstacle :init) r)) r))
    )
   (send-super :init)
   (setq _obstacles __obstacles)
   self)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; yeti_snowplow/obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yeti_snowplow/obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yeti_snowplow/obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance yeti_snowplow::obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yeti_snowplow::obstacles :md5sum-) "c1b14cf1472bdc7f2a4a7c32f2465997")
(setf (get yeti_snowplow::obstacles :datatype-) "yeti_snowplow/obstacles")
(setf (get yeti_snowplow::obstacles :definition-)
      "obstacle[] obstacles

================================================================================
MSG: yeti_snowplow/obstacle
float32 x
float32 y
#x and y are relative to robot position and orientation
float32 r
#radius of obstacle
bool dynamic
#if object is or was previously moving, i.e. this is a new obstacle in this position

")



(provide :yeti_snowplow/obstacles "c1b14cf1472bdc7f2a4a7c32f2465997")


