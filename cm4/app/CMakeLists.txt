cmake_minimum_required(VERSION 3.20.0)

set(BOARD_FLASH_RUNNER jlink)

find_package(Zephyr)
project(flighcomputer)

target_sources(app PRIVATE src/main.c)

#zephyr_code_relocate(FILES src/*.c LOCATION RAM)

#zephyr_code_relocate(FILES src/*.c LOCATION RAM_TEXT NOCOPY)