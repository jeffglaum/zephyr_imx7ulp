#!/bin/bash

/Applications/SEGGER/JLink/JFlash.app/Contents/MacOS/JFlashExe -openprj./imgutil/imx7ulp_evk/j-flash_project.jflash -open./imgutil/imx7ulp_evk/flashimage.bin,0x4000000 -auto -exit
