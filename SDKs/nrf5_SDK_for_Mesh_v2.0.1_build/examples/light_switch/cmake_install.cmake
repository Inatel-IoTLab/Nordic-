# Install script for directory: /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/examples/light_switch

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/examples/light_switch/client/cmake_install.cmake")
  include("/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/examples/light_switch/server/cmake_install.cmake")
  include("/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/examples/light_switch/provisioner/cmake_install.cmake")
  include("/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/examples/light_switch/proxy_server/cmake_install.cmake")
  include("/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/examples/light_switch/proxy_client/cmake_install.cmake")

endif()

