cmake_minimum_required(VERSION 2.8)

PROJECT(Destin)
# uncomment to be in Release mode
SET(CMAKE_BUILD_TYPE Release)
 
# uncomment to build in debug mode
#SET(CMAKE_BUILD_TYPE Debug)

#SET(CMAKE_EXE_LINKER_FLAGS -pg)
#ADD_DEFINITIONS( -pg)
include_directories(${ARMADILLO_INCLUDE_DIRS})
LINK_LIBRARIES(armadillo gfortran)
FIND_PACKAGE( OpenCV REQUIRED)
#ADD_SUBDIRECTORY(TreeMining)
ADD_SUBDIRECTORY(Common)
ADD_SUBDIRECTORY(EMDestin)
#ADD_SUBDIRECTORY(DrentheDestin) # Requires CUDA to build.
#ADD_SUBDIRECTORY(Bindings)
#ADD_SUBDIRECTORY(Misc)
ADD_SUBDIRECTORY(SOM)

# 2013.4.11
# CZT
ADD_SUBDIRECTORY(EMdestin_test)
