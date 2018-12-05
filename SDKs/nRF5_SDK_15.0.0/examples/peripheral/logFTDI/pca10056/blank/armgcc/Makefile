#SSADC
PROJECT_NAME     := logFTDI_pca10056
TARGETS          := nrf52840_xxaa
OUTPUT_DIRECTORY := _build

SDK_ROOT := ../../../../../..
SDK_MESH := ../../../../../../../nrf5_SDK_for_Mesh_v2.0.1_src
PROJ_DIR := ../../..

$(OUTPUT_DIRECTORY)/nrf52840_xxaa.out: \
  LINKER_SCRIPT  := saadc_gcc_nrf52.ld


# Source files common to all targets
SRC_FILES += \
  $(SDK_ROOT)/modules/nrfx/mdk/gcc_startup_nrf52840.S \
  $(SDK_ROOT)/components/libraries/experimental_log/src/nrf_log_backend_rtt.c \
  $(SDK_ROOT)/components/libraries/experimental_log/src/nrf_log_backend_serial.c \
  $(SDK_ROOT)/components/libraries/experimental_log/src/nrf_log_backend_uart.c \
  $(SDK_ROOT)/components/libraries/experimental_log/src/nrf_log_default_backends.c \
  $(SDK_ROOT)/components/libraries/experimental_log/src/nrf_log_frontend.c \
  $(SDK_ROOT)/components/libraries/experimental_log/src/nrf_log_str_formatter.c \
  $(SDK_ROOT)/components/boards/boards.c \
  $(SDK_ROOT)/components/libraries/util/app_error.c \
  $(SDK_ROOT)/components/libraries/util/app_error_weak.c \
  $(SDK_ROOT)/components/libraries/util/app_util_platform.c \
  $(SDK_ROOT)/components/libraries/atomic/nrf_atomic.c \
  $(SDK_ROOT)/components/libraries/balloc/nrf_balloc.c \
  $(SDK_ROOT)/external/fprintf/nrf_fprintf.c \
  $(SDK_ROOT)/external/fprintf/nrf_fprintf_format.c \
  $(SDK_ROOT)/components/libraries/experimental_memobj/nrf_memobj.c \
  $(SDK_ROOT)/components/libraries/strerror/nrf_strerror.c \
  $(SDK_ROOT)/integration/nrfx/legacy/nrf_drv_uart.c \
  $(SDK_ROOT)/modules/nrfx/drivers/src/prs/nrfx_prs.c \
  $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_uart.c \
  $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_uarte.c \
  $(PROJ_DIR)/main.c \
  $(SDK_ROOT)/modules/nrfx/mdk/system_nrf52840.c \
  $(SDK_MESH)/mesh/core/src/aes_cmac.c) \





  # $(wildcard $(SDK_MESH)/mesh/bearer/src/*.c) \
  # $(wildcard $(SDK_MESH)/mesh/prov/src/*.c) \
  # $(wildcard $(SDK_MESH)/mesh/access/src/*.c) \
  # $(wildcard $(SDK_MESH)/mesh/dfu/src/*.c) \
  # $(wildcard $(SDK_MESH)/mesh/stack/src/*.c) \
  # $(SDK_MESH)/models/config/src/config_server.c \
  # $(SDK_MESH)/models/config/src/composition_data.c \
  # $(SDK_MESH)/models/config/src/packed_index_list.c \
  # $(SDK_MESH)/models/health/src/health_server.c \
  # $(SDK_MESH)/external/micro-ecc/uECC.c \
  # $(SDK_MESH)/examples/common/src/assertion_handler_weak.c \
  # $(SDK_MESH)/examples/common/src/mesh_provisionee.c \


# Include folders common to all targets

###################################
####### VERIFICAR NECESSIDADE #####
###################################
#mesh/test/include
###################################



INC_FOLDERS += \
  $(SDK_ROOT)/components \
  $(SDK_ROOT)/modules/nrfx/mdk \
  $(SDK_ROOT)/components/libraries/experimental_log \
  $(PROJ_DIR) \
  $(SDK_ROOT)/components/libraries/strerror \
  $(SDK_ROOT)/components/toolchain/cmsis/include \
  $(SDK_ROOT)/components/libraries/util \
  ../config \
  $(SDK_ROOT)/components/libraries/balloc \
  $(SDK_ROOT)/modules/nrfx/hal \
  $(SDK_ROOT)/components/libraries/bsp \
  $(SDK_ROOT)/modules/nrfx \
  $(SDK_ROOT)/components/libraries/experimental_section_vars \
  $(SDK_ROOT)/integration/nrfx/legacy \
  $(SDK_ROOT)/components/libraries/mutex \
  $(SDK_ROOT)/components/libraries/experimental_log/src \
  $(SDK_ROOT)/components/libraries/delay \
  $(SDK_ROOT)/integration/nrfx \
  $(SDK_ROOT)/components/drivers_nrf/nrf_soc_nosd \
  $(SDK_ROOT)/external/segger_rtt \
  $(SDK_ROOT)/components/boards \
  $(SDK_ROOT)/components/libraries/experimental_memobj \
  $(SDK_ROOT)/modules/nrfx/drivers/include \
  $(SDK_ROOT)/external/fprintf \
  $(SDK_ROOT)/components/libraries/atomic \
  $(SDK_MESH)/mesh/core/src \
  


  # $(SDK_MESH)/mesh/core/api \
  # $(SDK_MESH)/mesh/core/include \
  # $(SDK_MESH)/mesh/bearer/api \
  # $(SDK_MESH)/mesh/bearer/include \
  # $(SDK_MESH)/mesh/prov/api \
  # $(SDK_MESH)/mesh/prov/include \
  # $(SDK_MESH)/mesh/access/api \
  # $(SDK_MESH)/mesh/access/include \
  # $(SDK_MESH)/mesh/dfu/api \
  # $(SDK_MESH)/mesh/dfu/include \
  # $(SDK_MESH)/mesh/stack/api \
  # $(SDK_MESH)/mesh/test/include \
  # $(SDK_MESH)/models/config/include \
  # $(SDK_MESH)/models/health/include \
  # $(SDK_MESH)/external/micro-ecc \
  # $(SDK_MESH)/examples/common/include \
  # $(SDK_MESH)/examples/light_switch/include \
  # $(SDK_ROOT)/components/softdevice/s140/headers \
  # $(SDK_ROOT)/components/softdevice/s140/headers \
  # $(SDK_MESH)/models/simple_on_off/include \
  # $(SDK_ROOT)/components/softdevice/common \
  # $(SDK_ROOT)/components/softdevice/s112/headers \
  # $(SDK_ROOT)/components/softdevice/s132/headers \
  # $(SDK_MESH)/external/softdevice/s130_2.0.1/s130_nrf51_2.0.1_API/include \
  # $(SDK_MESH)/external/softdevice/s132_5.0.0/s132_nrf52_5.0.0_API/include \
  

# Libraries common to all targets
LIB_FILES += \

# Optimization flags
OPT = -O3 -g3
# Uncomment the line below to enable link time optimization
#OPT += -flto


# C flags common to all targets
CFLAGS += $(OPT)
CFLAGS += -DBOARD_PCA10056
CFLAGS += -DBSP_DEFINES_ONLY
CFLAGS += -DCONFIG_GPIO_AS_PINRESET
CFLAGS += -DFLOAT_ABI_HARD
CFLAGS += -DNRF52840_XXAA
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mthumb -mabi=aapcs
CFLAGS += -Wall -Werror
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
# keep every function in a separate section, this allows linker to discard unused ones
CFLAGS += -ffunction-sections -fdata-sections -fno-strict-aliasing
CFLAGS += -fno-builtin -fshort-enums
# preprocessor symbols the bluetooth mesh
# Não sei se funciona
# http://gcc.gnu.org/onlinedocs/gcc/Preprocessor-Options.html
CFLAGS += -D NRF52_SERIES
CFLAGS += -D NRF_MESH_LOG_ENABLE=NRF_LOG_USES_RTT
CFLAGS += -D CONFIG_APP_IN_CORE

# C++ flags common to all targets
CXXFLAGS += $(OPT)

# Assembler flags common to all targets
ASMFLAGS += -g3
ASMFLAGS += -mcpu=cortex-m4
ASMFLAGS += -mthumb -mabi=aapcs
ASMFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
ASMFLAGS += -DBOARD_PCA10056
ASMFLAGS += -DBSP_DEFINES_ONLY
ASMFLAGS += -DCONFIG_GPIO_AS_PINRESET
ASMFLAGS += -DFLOAT_ABI_HARD
ASMFLAGS += -DNRF52840_XXAA

# Linker flags
LDFLAGS += $(OPT)
LDFLAGS += -mthumb -mabi=aapcs -L$(SDK_ROOT)/modules/nrfx/mdk -T$(LINKER_SCRIPT)
LDFLAGS += -mcpu=cortex-m4
LDFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
# let linker dump unused sections
LDFLAGS += -Wl,--gc-sections
# use newlib in nano version
LDFLAGS += --specs=nano.specs

nrf52840_xxaa: CFLAGS += -D__HEAP_SIZE=8192
nrf52840_xxaa: CFLAGS += -D__STACK_SIZE=8192
nrf52840_xxaa: ASMFLAGS += -D__HEAP_SIZE=8192
nrf52840_xxaa: ASMFLAGS += -D__STACK_SIZE=8192

# Add standard libraries at the very end of the linker input, after all objects
# that may need symbols provided by these libraries.
LIB_FILES += -lc -lnosys -lm


.PHONY: default help

# Default target - first one defined
default: nrf52840_xxaa

# Print all targets that can be built
help:
	@echo following targets are available:
	@echo		nrf52840_xxaa
	@echo		sdk_config - starting external tool for editing sdk_config.h
	@echo		flash      - flashing binary

TEMPLATE_PATH := $(SDK_ROOT)/components/toolchain/gcc


include $(TEMPLATE_PATH)/Makefile.common

$(foreach target, $(TARGETS), $(call define_target, $(target)))

.PHONY: flash erase

# Flash the program
flash: $(OUTPUT_DIRECTORY)/nrf52840_xxaa.hex
	@echo Flashing: $<
	nrfjprog -f nrf52 --program $< --sectorerase
	nrfjprog -f nrf52 --reset

erase:
	nrfjprog -f nrf52 --eraseall

SDK_CONFIG_FILE := ../config/sdk_config.h
CMSIS_CONFIG_TOOL := $(SDK_ROOT)/external_tools/cmsisconfig/CMSIS_Configuration_Wizard.jar
sdk_config:
	java -jar $(CMSIS_CONFIG_TOOL) $(SDK_CONFIG_FILE)