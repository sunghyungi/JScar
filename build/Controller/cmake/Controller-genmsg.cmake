# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Controller: 1 messages, 0 services")

set(MSG_I_FLAGS "-IController:/home/jjs/git/JScar/src/Controller/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg" NAME_WE)
add_custom_target(_Controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Controller" "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Controller
  "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Controller
)

### Generating Services

### Generating Module File
_generate_module_cpp(Controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Controller_generate_messages Controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg" NAME_WE)
add_dependencies(Controller_generate_messages_cpp _Controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Controller_gencpp)
add_dependencies(Controller_gencpp Controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(Controller
  "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Controller
)

### Generating Services

### Generating Module File
_generate_module_eus(Controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Controller_generate_messages Controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg" NAME_WE)
add_dependencies(Controller_generate_messages_eus _Controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Controller_geneus)
add_dependencies(Controller_geneus Controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Controller
  "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Controller
)

### Generating Services

### Generating Module File
_generate_module_lisp(Controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Controller_generate_messages Controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg" NAME_WE)
add_dependencies(Controller_generate_messages_lisp _Controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Controller_genlisp)
add_dependencies(Controller_genlisp Controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(Controller
  "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Controller
)

### Generating Services

### Generating Module File
_generate_module_nodejs(Controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Controller_generate_messages Controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg" NAME_WE)
add_dependencies(Controller_generate_messages_nodejs _Controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Controller_gennodejs)
add_dependencies(Controller_gennodejs Controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Controller
  "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Controller
)

### Generating Services

### Generating Module File
_generate_module_py(Controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Controller_generate_messages Controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jjs/git/JScar/src/Controller/msg/RCdata.msg" NAME_WE)
add_dependencies(Controller_generate_messages_py _Controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Controller_genpy)
add_dependencies(Controller_genpy Controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Controller_generate_messages_py std_msgs_generate_messages_py)
endif()
