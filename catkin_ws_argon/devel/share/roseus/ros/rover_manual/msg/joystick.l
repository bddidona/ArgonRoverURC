;; Auto-generated. Do not edit!


(when (boundp 'rover_manual::joystick)
  (if (not (find-package "ROVER_MANUAL"))
    (make-package "ROVER_MANUAL"))
  (shadow 'joystick (find-package "ROVER_MANUAL")))
(unless (find-package "ROVER_MANUAL::JOYSTICK")
  (make-package "ROVER_MANUAL::JOYSTICK"))

(in-package "ROS")
;;//! \htmlinclude joystick.msg.html


(defclass rover_manual::joystick
  :super ros::object
  :slots (_A _B _X _Y _LB _RB _Back _Start _Guide _LS _RS _LeftStick_LR _LeftStick_UD _RightStick_LR _RightStick_UD _LT _RT _DPad_LR _DPad_UD ))

(defmethod rover_manual::joystick
  (:init
   (&key
    ((:A __A) nil)
    ((:B __B) nil)
    ((:X __X) nil)
    ((:Y __Y) nil)
    ((:LB __LB) nil)
    ((:RB __RB) nil)
    ((:Back __Back) nil)
    ((:Start __Start) nil)
    ((:Guide __Guide) nil)
    ((:LS __LS) nil)
    ((:RS __RS) nil)
    ((:LeftStick_LR __LeftStick_LR) 0.0)
    ((:LeftStick_UD __LeftStick_UD) 0.0)
    ((:RightStick_LR __RightStick_LR) 0.0)
    ((:RightStick_UD __RightStick_UD) 0.0)
    ((:LT __LT) 0.0)
    ((:RT __RT) 0.0)
    ((:DPad_LR __DPad_LR) 0.0)
    ((:DPad_UD __DPad_UD) 0.0)
    )
   (send-super :init)
   (setq _A __A)
   (setq _B __B)
   (setq _X __X)
   (setq _Y __Y)
   (setq _LB __LB)
   (setq _RB __RB)
   (setq _Back __Back)
   (setq _Start __Start)
   (setq _Guide __Guide)
   (setq _LS __LS)
   (setq _RS __RS)
   (setq _LeftStick_LR (float __LeftStick_LR))
   (setq _LeftStick_UD (float __LeftStick_UD))
   (setq _RightStick_LR (float __RightStick_LR))
   (setq _RightStick_UD (float __RightStick_UD))
   (setq _LT (float __LT))
   (setq _RT (float __RT))
   (setq _DPad_LR (float __DPad_LR))
   (setq _DPad_UD (float __DPad_UD))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:LB
   (&optional __LB)
   (if __LB (setq _LB __LB)) _LB)
  (:RB
   (&optional __RB)
   (if __RB (setq _RB __RB)) _RB)
  (:Back
   (&optional __Back)
   (if __Back (setq _Back __Back)) _Back)
  (:Start
   (&optional __Start)
   (if __Start (setq _Start __Start)) _Start)
  (:Guide
   (&optional __Guide)
   (if __Guide (setq _Guide __Guide)) _Guide)
  (:LS
   (&optional __LS)
   (if __LS (setq _LS __LS)) _LS)
  (:RS
   (&optional __RS)
   (if __RS (setq _RS __RS)) _RS)
  (:LeftStick_LR
   (&optional __LeftStick_LR)
   (if __LeftStick_LR (setq _LeftStick_LR __LeftStick_LR)) _LeftStick_LR)
  (:LeftStick_UD
   (&optional __LeftStick_UD)
   (if __LeftStick_UD (setq _LeftStick_UD __LeftStick_UD)) _LeftStick_UD)
  (:RightStick_LR
   (&optional __RightStick_LR)
   (if __RightStick_LR (setq _RightStick_LR __RightStick_LR)) _RightStick_LR)
  (:RightStick_UD
   (&optional __RightStick_UD)
   (if __RightStick_UD (setq _RightStick_UD __RightStick_UD)) _RightStick_UD)
  (:LT
   (&optional __LT)
   (if __LT (setq _LT __LT)) _LT)
  (:RT
   (&optional __RT)
   (if __RT (setq _RT __RT)) _RT)
  (:DPad_LR
   (&optional __DPad_LR)
   (if __DPad_LR (setq _DPad_LR __DPad_LR)) _DPad_LR)
  (:DPad_UD
   (&optional __DPad_UD)
   (if __DPad_UD (setq _DPad_UD __DPad_UD)) _DPad_UD)
  (:serialization-length
   ()
   (+
    ;; bool _A
    1
    ;; bool _B
    1
    ;; bool _X
    1
    ;; bool _Y
    1
    ;; bool _LB
    1
    ;; bool _RB
    1
    ;; bool _Back
    1
    ;; bool _Start
    1
    ;; bool _Guide
    1
    ;; bool _LS
    1
    ;; bool _RS
    1
    ;; float32 _LeftStick_LR
    4
    ;; float32 _LeftStick_UD
    4
    ;; float32 _RightStick_LR
    4
    ;; float32 _RightStick_UD
    4
    ;; float32 _LT
    4
    ;; float32 _RT
    4
    ;; float32 _DPad_LR
    4
    ;; float32 _DPad_UD
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _A
       (if _A (write-byte -1 s) (write-byte 0 s))
     ;; bool _B
       (if _B (write-byte -1 s) (write-byte 0 s))
     ;; bool _X
       (if _X (write-byte -1 s) (write-byte 0 s))
     ;; bool _Y
       (if _Y (write-byte -1 s) (write-byte 0 s))
     ;; bool _LB
       (if _LB (write-byte -1 s) (write-byte 0 s))
     ;; bool _RB
       (if _RB (write-byte -1 s) (write-byte 0 s))
     ;; bool _Back
       (if _Back (write-byte -1 s) (write-byte 0 s))
     ;; bool _Start
       (if _Start (write-byte -1 s) (write-byte 0 s))
     ;; bool _Guide
       (if _Guide (write-byte -1 s) (write-byte 0 s))
     ;; bool _LS
       (if _LS (write-byte -1 s) (write-byte 0 s))
     ;; bool _RS
       (if _RS (write-byte -1 s) (write-byte 0 s))
     ;; float32 _LeftStick_LR
       (sys::poke _LeftStick_LR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LeftStick_UD
       (sys::poke _LeftStick_UD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RightStick_LR
       (sys::poke _RightStick_LR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RightStick_UD
       (sys::poke _RightStick_UD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LT
       (sys::poke _LT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RT
       (sys::poke _RT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DPad_LR
       (sys::poke _DPad_LR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DPad_UD
       (sys::poke _DPad_UD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _A
     (setq _A (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _B
     (setq _B (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _X
     (setq _X (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Y
     (setq _Y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LB
     (setq _LB (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RB
     (setq _RB (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Back
     (setq _Back (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Start
     (setq _Start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Guide
     (setq _Guide (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LS
     (setq _LS (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RS
     (setq _RS (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _LeftStick_LR
     (setq _LeftStick_LR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LeftStick_UD
     (setq _LeftStick_UD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RightStick_LR
     (setq _RightStick_LR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RightStick_UD
     (setq _RightStick_UD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LT
     (setq _LT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RT
     (setq _RT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DPad_LR
     (setq _DPad_LR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DPad_UD
     (setq _DPad_UD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rover_manual::joystick :md5sum-) "2638f5eded79bb441e076bbda419a866")
(setf (get rover_manual::joystick :datatype-) "rover_manual/joystick")
(setf (get rover_manual::joystick :definition-)
      "bool A
bool B
bool X
bool Y
bool LB
bool RB
bool Back
bool Start
bool Guide
bool LS
bool RS

float32 LeftStick_LR
float32 LeftStick_UD
float32 RightStick_LR
float32 RightStick_UD
float32 LT
float32 RT
float32 DPad_LR
float32 DPad_UD
")



(provide :rover_manual/joystick "2638f5eded79bb441e076bbda419a866")


