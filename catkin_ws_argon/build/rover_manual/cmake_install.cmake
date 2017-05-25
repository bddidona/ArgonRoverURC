# Install script for directory: /home/ben/catkin/catkin_ws_argon/src/rover_manual

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ben/catkin/catkin_ws_argon/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rover_manual/msg" TYPE FILE FILES
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/joystick.msg"
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/location_point.msg"
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/robot_position.msg"
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/target.msg"
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/turn.msg"
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/wheel_speeds.msg"
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state.msg"
    "/home/ben/catkin/catkin_ws_argon/src/rover_manual/msg/vesc_state_stamped.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rover_manual/cmake" TYPE FILE FILES "/home/ben/catkin/catkin_ws_argon/build/rover_manual/catkin_generated/installspace/rover_manual-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ben/catkin/catkin_ws_argon/devel/include/rover_manual")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ben/catkin/catkin_ws_argon/devel/share/roseus/ros/rover_manual")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ben/catkin/catkin_ws_argon/devel/share/common-lisp/ros/rover_manual")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ben/catkin/catkin_ws_argon/devel/share/gennodejs/ros/rover_manual")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ben/catkin/catkin_ws_argon/devel/lib/python2.7/dist-packages/rover_manual")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ben/catkin/catkin_ws_argon/devel/lib/python2.7/dist-packages/rover_manual")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ben/catkin/catkin_ws_argon/build/rover_manual/catkin_generated/installspace/rover_manual.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rover_manual/cmake" TYPE FILE FILES "/home/ben/catkin/catkin_ws_argon/build/rover_manual/catkin_generated/installspace/rover_manual-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rover_manual/cmake" TYPE FILE FILES
    "/home/ben/catkin/catkin_ws_argon/build/rover_manual/catkin_generated/installspace/rover_manualConfig.cmake"
    "/home/ben/catkin/catkin_ws_argon/build/rover_manual/catkin_generated/installspace/rover_manualConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rover_manual" TYPE FILE FILES "/home/ben/catkin/catkin_ws_argon/src/rover_manual/package.xml")
endif()

