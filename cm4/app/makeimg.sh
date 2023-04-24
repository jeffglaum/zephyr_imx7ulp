#!/bin/bash

# Use Python Virtual Environment.
source ~/zephyrproject/.venv/bin/activate

# Source core Zepyr settings.
source ~/zephyrproject/zephyr/zephyr-env.sh

echo "INFO: Starting make image."

cp ./build/zephyr/zephyr.bin ./imgutil/imx7ulp_evk

pushd ./imgutil/imx7ulp_evk
if ./makeimg.sh ram ; then
  echo "INFO: Make image finished successfully."
fi
popd
