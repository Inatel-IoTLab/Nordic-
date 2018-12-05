# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# compile ASM with /usr/bin/arm-none-eabi-gcc
# compile C with /usr/bin/arm-none-eabi-gcc
ASM_FLAGS = -O2 -g -DNDEBUG   -mcpu=cortex-m4 -mthumb -mabi=aapcs -mfloat-abi=hard -mfpu=fpv4-sp-d16

ASM_DEFINES = -DBOARD_PCA10040 -DCONFIG_GPIO_AS_PINRESET -DNRF52832 -DNRF52832_XXAA -DNRF52_SERIES -DNRF_SD_BLE_API_VERSION=6 -DS132 -DSOFTDEVICE_PRESENT

ASM_INCLUDES = -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/examples/beaconing/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/examples/beaconing/../include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/examples/common/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/models/config/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/models/health/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/stack/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/core/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/core/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/access/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/access/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/dfu/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/dfu/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/prov/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/prov/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/bearer/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/bearer/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/gatt/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/gatt/include -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/softdevice/s132/headers -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/softdevice/s132/headers/nrf52 -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx/mdk -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx/hal -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx/templates/nRF52832 -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/toolchain/cmsis/include -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/toolchain/gcc -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/toolchain/cmsis/dsp/GCC -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/boards -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/integration/nrfx -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/libraries/log -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/libraries/util -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/libraries/delay -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/external/rtt/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/external/micro-ecc -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/external/micro-ecc/../../mesh/core/include 

C_FLAGS = --std=gnu99 -Wall -Wno-attributes -Wno-format -ffunction-sections -fdata-sections -fno-strict-aliasing -fno-builtin --short-enums -O3 -g   -mcpu=cortex-m4 -mthumb -mabi=aapcs -mfloat-abi=hard -mfpu=fpv4-sp-d16

C_DEFINES = -DBOARD_PCA10040 -DCONFIG_GPIO_AS_PINRESET -DNRF52832 -DNRF52832_XXAA -DNRF52_SERIES -DNRF_SD_BLE_API_VERSION=6 -DS132 -DSOFTDEVICE_PRESENT

C_INCLUDES = -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/examples/beaconing/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/examples/beaconing/../include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/examples/common/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/models/config/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/models/health/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/stack/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/core/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/core/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/access/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/access/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/dfu/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/dfu/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/prov/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/prov/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/bearer/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/bearer/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/gatt/api -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/mesh/gatt/include -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/softdevice/s132/headers -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/softdevice/s132/headers/nrf52 -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx/mdk -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx/hal -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/modules/nrfx/templates/nRF52832 -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/toolchain/cmsis/include -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/toolchain/gcc -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/toolchain/cmsis/dsp/GCC -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/boards -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/integration/nrfx -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/libraries/log -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/libraries/util -I/home/mazzer/work/nordic/sdk/nRF5_SDK_15.0.0/components/libraries/delay -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/external/rtt/include -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/external/micro-ecc -I/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/external/micro-ecc/../../mesh/core/include 

