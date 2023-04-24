#!/bin/bash

# Use Python Virtual Environment.
source ~/zephyrproject/.venv/bin/activate

# Source core Zepyr settings.
source ~/zephyrproject/zephyr/zephyr-env.sh

echo "INFO: Starting build."

if west build -b imx7ulp_evk -- -DSOC_ROOT=. -DBOARD_ROOT=. -DDTS_ROOT=. ; then
  echo "INFO: Build finished successfully."
  ./makeimg.sh
fi
echo "INFO: Done."
