# Install script for directory: /home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/catkin_ws/install_isolated")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/catkin_ws/install_isolated/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/catkin_ws/install_isolated/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/catkin_ws/install_isolated/setup.bash;/home/ubuntu/catkin_ws/install_isolated/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/setup.bash"
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/catkin_ws/install_isolated/setup.sh;/home/ubuntu/catkin_ws/install_isolated/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/setup.sh"
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/catkin_ws/install_isolated/setup.zsh;/home/ubuntu/catkin_ws/install_isolated/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/setup.zsh"
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/catkin_ws/install_isolated/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/catkin_ws/install_isolated" TYPE FILE FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/msg" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg"
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/srv" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv"
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/cmake" TYPE FILE FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/rospy_tutorials-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel_isolated/rospy_tutorials/include/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel_isolated/rospy_tutorials/share/roseus/ros/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel_isolated/rospy_tutorials/share/common-lisp/ros/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel_isolated/rospy_tutorials/share/gennodejs/ros/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/home/ubuntu/catkin_ws/venv/bin/python" -m compileall "/home/ubuntu/catkin_ws/devel_isolated/rospy_tutorials/lib/python3/dist-packages/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel_isolated/rospy_tutorials/lib/python3/dist-packages/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/rospy_tutorials.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/cmake" TYPE FILE FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/rospy_tutorials-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/cmake" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/rospy_tutorialsConfig.cmake"
    "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/rospy_tutorialsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/listener")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/listener.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/talker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/talker.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/001_talker_listener/README"
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/001_talker_listener/talker_listener.launch"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/002_headers" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/listener_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/002_headers" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/talker_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/002_headers" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/002_headers/headers.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/003_listener_with_user_data" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/listener_with_user_data.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/003_listener_with_user_data" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/003_listener_with_user_data/listener_with_user_data.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/004_listener_subscribe_notify" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/listener_subscribe_notify.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/004_listener_subscribe_notify" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/004_listener_subscribe_notify/listener_subscribe_notify.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/005_add_two_ints" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/add_two_ints_client")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/005_add_two_ints" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/add_two_ints_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/006_parameters" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/param_talker.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/006_parameters" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/006_parameters/param_talker.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/client_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/listener_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/server_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/talker_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/007_connection_header/connection_header.launch"
    "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/007_connection_header/README"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/008_on_shutdown" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/publish_on_shutdown.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/008_on_shutdown" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/008_on_shutdown/on_shutdown.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/009_advanced_publish" TYPE PROGRAM FILES "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/catkin_generated/installspace/advanced_publish.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/009_advanced_publish" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros_tutorials/rospy_tutorials/009_advanced_publish/advanced_publish.launch")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ubuntu/catkin_ws/build_isolated/rospy_tutorials/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
