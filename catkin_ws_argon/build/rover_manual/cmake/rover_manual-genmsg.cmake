# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rover_manual: 8 messages, 0 services")

set(MSG_I_FLAGS "-Irover_manual:/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rover_manual_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg" ""
)

get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg" "rover_manual/location_point"
)

get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg" ""
)

get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg" "std_msgs/Header:rover_manual/vesc_state"
)

get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg" ""
)

get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg" ""
)

get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg" ""
)

get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg" NAME_WE)
add_custom_target(_rover_manual_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_manual" "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg"
  "${MSG_I_FLAGS}"
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)
_generate_msg_cpp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
)

### Generating Services

### Generating Module File
_generate_module_cpp(rover_manual
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rover_manual_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rover_manual_generate_messages rover_manual_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_cpp _rover_manual_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_manual_gencpp)
add_dependencies(rover_manual_gencpp rover_manual_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_manual_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg"
  "${MSG_I_FLAGS}"
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)
_generate_msg_eus(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
)

### Generating Services

### Generating Module File
_generate_module_eus(rover_manual
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rover_manual_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rover_manual_generate_messages rover_manual_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_eus _rover_manual_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_manual_geneus)
add_dependencies(rover_manual_geneus rover_manual_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_manual_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg"
  "${MSG_I_FLAGS}"
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)
_generate_msg_lisp(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
)

### Generating Services

### Generating Module File
_generate_module_lisp(rover_manual
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rover_manual_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rover_manual_generate_messages rover_manual_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_lisp _rover_manual_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_manual_genlisp)
add_dependencies(rover_manual_genlisp rover_manual_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_manual_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg"
  "${MSG_I_FLAGS}"
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)
_generate_msg_nodejs(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rover_manual
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rover_manual_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rover_manual_generate_messages rover_manual_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_nodejs _rover_manual_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_manual_gennodejs)
add_dependencies(rover_manual_gennodejs rover_manual_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_manual_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg"
  "${MSG_I_FLAGS}"
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)
_generate_msg_py(rover_manual
  "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
)

### Generating Services

### Generating Module File
_generate_module_py(rover_manual
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rover_manual_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rover_manual_generate_messages rover_manual_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg" NAME_WE)
add_dependencies(rover_manual_generate_messages_py _rover_manual_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_manual_genpy)
add_dependencies(rover_manual_genpy rover_manual_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_manual_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_manual
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rover_manual_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_manual
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rover_manual_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_manual
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rover_manual_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_manual
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rover_manual_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_manual
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rover_manual_generate_messages_py std_msgs_generate_messages_py)
endif()
