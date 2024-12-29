#!/bin/bash

GPIOSIM_PATH=/sys/kernel/config/gpio-sim
GPIO_DEV=testdev
GPIO_CHIP=testchip
GPIO_NUMLINES=4

chmod 777 ${GPIOSIM_PATH} -R

if [ ! -d  ${GPIOSIM_PATH}/${GPIO_DEV} ]
then
    mkdir ${GPIOSIM_PATH}/${GPIO_DEV}
fi

if [ ! -d  ${GPIOSIM_PATH}/${GPIO_DEV}/${GPIO_CHIP} ]
then
    mkdir ${GPIOSIM_PATH}/${GPIO_DEV}/${GPIO_CHIP}
fi

echo "${GPIO_DEV}_${GPIO_CHIP}" > ${GPIOSIM_PATH}/${GPIO_DEV}/${GPIO_CHIP}/label
echo ${GPIO_NUMLINES} > ${GPIOSIM_PATH}/${GPIO_DEV}/${GPIO_CHIP}/num_lines

echo 1 > ${GPIOSIM_PATH}/${GPIO_DEV}/live

chmod 777 /dev/gpiochip0


# setup


# FOUND_GPIO_NUMLINES=$(ls -la -d /sys/devices/platform/gpio*/gpiochip*/sim_gpio* | wc -l)
# if [ "${FOUND_GPIO_NUMLINES}" == "${GPIO_NUMLINES}" ]
# then 
#     echo $(ls -la -d /sys/devices/platform/gpio*/gpiochip*/sim_gpio*)
# fi

# teardown