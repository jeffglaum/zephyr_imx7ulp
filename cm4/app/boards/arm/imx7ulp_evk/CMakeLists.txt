zephyr_library()
zephyr_library_include_directories(${ZEPHYR_BASE}/drivers)
add_compile_definitions(CPU_MCIMX7U5DVP08)
zephyr_library_sources(
    board.c
    clock_config.c
    peripherals.c
    pin_mux.c
    )

