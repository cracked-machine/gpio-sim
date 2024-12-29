#!/bin/bash

GPIOSIM_PATH=/sys/kernel/config/gpio-sim
GPIO_DEV=testdev
GPIO_CHIP=testchip
GPIO_NUMLINES=4

chmod 777 ${GPIOSIM_PATH} -R

echo 0 > ${GPIOSIM_PATH}/${GPIO_DEV}/live

if [ -d  ${GPIOSIM_PATH}/${GPIO_DEV}/${GPIO_CHIP} ]
then
    rmdir ${GPIOSIM_PATH}/${GPIO_DEV}/${GPIO_CHIP}
fi

if [ -d  ${GPIOSIM_PATH}/${GPIO_DEV} ]
then
    rmdir ${GPIOSIM_PATH}/${GPIO_DEV}
fi
