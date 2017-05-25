
(cl:in-package :asdf)

(defsystem "yeti_snowplow-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joystick" :depends-on ("_package_joystick"))
    (:file "_package_joystick" :depends-on ("_package"))
    (:file "location_point" :depends-on ("_package_location_point"))
    (:file "_package_location_point" :depends-on ("_package"))
    (:file "obstacle" :depends-on ("_package_obstacle"))
    (:file "_package_obstacle" :depends-on ("_package"))
    (:file "obstacles" :depends-on ("_package_obstacles"))
    (:file "_package_obstacles" :depends-on ("_package"))
    (:file "robot_position" :depends-on ("_package_robot_position"))
    (:file "_package_robot_position" :depends-on ("_package"))
    (:file "target" :depends-on ("_package_target"))
    (:file "_package_target" :depends-on ("_package"))
    (:file "turn" :depends-on ("_package_turn"))
    (:file "_package_turn" :depends-on ("_package"))
    (:file "wheel_speeds" :depends-on ("_package_wheel_speeds"))
    (:file "_package_wheel_speeds" :depends-on ("_package"))
  ))