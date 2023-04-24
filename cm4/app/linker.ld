/*
 * Copyright (c) 2022 Carlo Caione <ccaione@baylibre.com>
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/**
 * @file
 * @brief Linker command/script file
 *
 * Linker script for the Cortex-M platforms.
 */

#include <zephyr/linker/sections.h>
#include <zephyr/devicetree.h>

#include <zephyr/linker/linker-defs.h>
#include <zephyr/linker/linker-tool.h>


#include <zephyr/arch/arm/aarch32/cortex_m/scripts/linker.ld>

MEMORY
{
     m_interrupts          (RX)  : ORIGIN = 0x1FFD1000, LENGTH = 0x00000240
     RAM (rx) : ORIGIN = 0x1ffd2000, LENGTH = 0x5CE00
}

SECTIONS
{
  /* The startup code goes first into internal RAM */
  .interrupts :
  {
    __VECTOR_TABLE = .;
    __Vectors = .;
    . = ALIGN(4);
    KEEP(*(.isr_vector))     /* Startup code */
    . = ALIGN(4);
  } > m_interrupts
}