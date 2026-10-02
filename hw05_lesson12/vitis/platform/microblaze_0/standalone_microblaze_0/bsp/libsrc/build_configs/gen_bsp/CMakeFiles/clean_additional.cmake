# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/tymbys/home/FPGA/course/courses/robot-dreams/hw/hw05_lesson12/vitis/platform/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/home/tymbys/home/FPGA/course/courses/robot-dreams/hw/hw05_lesson12/vitis/platform/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/home/tymbys/home/FPGA/course/courses/robot-dreams/hw/hw05_lesson12/vitis/platform/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/home/tymbys/home/FPGA/course/courses/robot-dreams/hw/hw05_lesson12/vitis/platform/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
