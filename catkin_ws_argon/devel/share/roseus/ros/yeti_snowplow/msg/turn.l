;; Auto-generated. Do not edit!


(when (boundp 'yeti_snowplow::turn)
  (if (not (find-package "YETI_SNOWPLOW"))
    (make-package "YETI_SNOWPLOW"))
  (shadow 'turn (find-package "YETI_SNOWPLOW")))
(unless (find-package "YETI_SNOWPLOW::TURN")
  (make-package "YETI_SNOWPLOW::TURN"))

(in-package "ROS")
;;//! \htmlinclude turn.msg.html


(defclass yeti_snowplow::turn
  :super ros::object
  :slots (_angle _stop ))

(defmethod yeti_snowplow::turn
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _stop __stop)
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yeti_snowplow::turn :md5sum-) "3d13a914ba0846a78d8f6016249a48c2")
(setf (get yeti_snowplow::turn :datatype-) "yeti_snowplow/turn")
(setf (get yeti_snowplow::turn :definition-)
      "float32 angle
bool stop
")



(provide :yeti_snowplow/turn "3d13a914ba0846a78d8f6016249a48c2")


