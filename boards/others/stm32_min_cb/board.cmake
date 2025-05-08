# SPDX-License-Identifier: Apache-2.0

board_runner_args(jlink "--device=STM32F103CB" "--speed=4000")
board_runner_args(stlink "--device=STM32F103CBT6")
board_runner_args(openocd "--cmd-pre-init=reset_config none")

include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd-stm32.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
