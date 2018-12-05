## Mesclando SDK MESH com SDK PERIFÉRICO
A junção do código mesh com o código de periférico foi realizada em cima do exemplo saadc contido no seguinte caminho, ```nrf52_sdk_15.0.0/examples/peripheral/saadc ```.


#### main.c

A main se encontra limpa pois a prioridade aqui foi a correção de depências que devem ser adicionadas no Makefile.

```
#include <stdio.h>

#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"


#include "nrf_sdh_soc.h"



int main(void)
{
    NRF_LOG_INIT(NULL); // @suppress("Statement has no effect")

    NRF_LOG_DEFAULT_BACKENDS_INIT();

    while (1)
    {
        NRF_LOG_FLUSH();
        NRF_LOG_INFO("Aplicação MESH.");
    }
}
```

#### Makefile

```
PROJECT_NAME     := saadc_pca10056
TARGETS          := nrf52840_xxaa
OUTPUT_DIRECTORY := _build

SDK_ROOT := ../../../../../..
PROJ_DIR := ../../..
```
Foi adicionado a variável ```MESH_ROOT``` para facilitar a busca de dependências na pasta do sdk MESH.

```
#Path SDK for MESH
MESH_ROOT := ../../../../../../../nrf5_SDK_for_Mesh_v2.0.1_src

#sdk_config.h
SDK_CONFIG := ../config
# SDK_CONFIG := ../../../include/config


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
  $(SDK_ROOT)/components/libraries/util/app_error_handler_gcc.c \
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
```
Foram adicionadas todos os arquivos referidos na documentação da nordic para o funcionamento da rede mesh
```
  $(MESH_ROOT)/mesh/core/src/aes.c \
  $(MESH_ROOT)/mesh/core/src/aes_cmac.c \
  $(MESH_ROOT)/mesh/core/src/beacon.c \
  $(MESH_ROOT)/mesh/core/src/bearer_event.c \
  $(MESH_ROOT)/mesh/core/src/cache.c \
  $(MESH_ROOT)/mesh/core/src/ccm_soft.c \
  $(MESH_ROOT)/mesh/core/src/core_tx_adv.c \
  $(MESH_ROOT)/mesh/core/src/core_tx.c \
  $(MESH_ROOT)/mesh/core/src/core_tx_instaburst.c \
  $(MESH_ROOT)/mesh/core/src/enc.c \
  $(MESH_ROOT)/mesh/core/src/event.c \
  $(MESH_ROOT)/mesh/core/src/fifo.c \
  $(MESH_ROOT)/mesh/core/src/flash_manager.c \
  $(MESH_ROOT)/mesh/core/src/flash_manager_defrag.c \
  $(MESH_ROOT)/mesh/core/src/flash_manager_internal.c \
  $(MESH_ROOT)/mesh/core/src/fsm.c \
  $(MESH_ROOT)/mesh/core/src/hal.c \
  $(MESH_ROOT)/mesh/core/src/heartbeat.c \
  $(MESH_ROOT)/mesh/core/src/internal_event.c \
  $(MESH_ROOT)/mesh/core/src/list.c \
  $(MESH_ROOT)/mesh/core/src/log.c \
  $(MESH_ROOT)/mesh/core/src/mesh_flash.c \
  $(MESH_ROOT)/mesh/core/src/msg_cache.c \
  $(MESH_ROOT)/mesh/core/src/msqueue.c \
  $(MESH_ROOT)/mesh/core/src/net_beacon.c \
  $(MESH_ROOT)/mesh/core/src/net_packet.c \
  $(MESH_ROOT)/mesh/core/src/net_state.c \
  $(MESH_ROOT)/mesh/core/src/network.c \
  $(MESH_ROOT)/mesh/core/src/nrf_flash.c \
  $(MESH_ROOT)/mesh/core/src/nrf_mesh.c  \
  $(MESH_ROOT)/mesh/core/src/nrf_mesh_configure.c \
  $(MESH_ROOT)/mesh/core/src/nrf_mesh_keygen.c \
  $(MESH_ROOT)/mesh/core/src/nrf_mesh_opt.c \
  $(MESH_ROOT)/mesh/core/src/nrf_mesh_utils.c \
  $(MESH_ROOT)/mesh/core/src/packet_buffer.c \
  $(MESH_ROOT)/mesh/core/src/packet_mgr.c \
  $(MESH_ROOT)/mesh/core/src/queue.c \
  $(MESH_ROOT)/mesh/core/src/rand.c \
  $(MESH_ROOT)/mesh/core/src/replay_cache.c \
  $(MESH_ROOT)/mesh/core/src/ticker.c \
  $(MESH_ROOT)/mesh/core/src/timer.c \
  $(MESH_ROOT)/mesh/core/src/timer_scheduler.c \
  $(MESH_ROOT)/mesh/core/src/timeslot.c \
  $(MESH_ROOT)/mesh/core/src/toolchain.c \
  $(MESH_ROOT)/mesh/core/src/transport.c \
  $(MESH_ROOT)/mesh/core/src/uri.c  \
  $(MESH_ROOT)/mesh/bearer/src/ad_listener.c  \
  $(MESH_ROOT)/mesh/bearer/src/bearer_handler.c  \
  $(MESH_ROOT)/mesh/bearer/src/instaburst_tx.c  \
  $(MESH_ROOT)/mesh/bearer/src/ad_type_filter.c  \
  $(MESH_ROOT)/mesh/bearer/src/broadcast.c  \
  $(MESH_ROOT)/mesh/bearer/src/radio_config.c  \
  $(MESH_ROOT)/mesh/bearer/src/advertiser.c  \
  $(MESH_ROOT)/mesh/bearer/src/filter_engine.c  \
  $(MESH_ROOT)/mesh/bearer/src/rssi_filter.c  \
  $(MESH_ROOT)/mesh/bearer/src/adv_ext_packet.c  \
  $(MESH_ROOT)/mesh/bearer/src/gap_address_filter.c  \
  $(MESH_ROOT)/mesh/bearer/src/scanner.c  \
  $(MESH_ROOT)/mesh/bearer/src/adv_ext_tx.c  \
  $(MESH_ROOT)/mesh/bearer/src/instaburst.c  \
  $(MESH_ROOT)/mesh/bearer/src/adv_packet_filter.c  \
  $(MESH_ROOT)/mesh/bearer/src/instaburst_rx.c  \
  $(MESH_ROOT)/mesh/prov/src/prov_bearer_adv.c  \
  $(MESH_ROOT)/mesh/prov/src/prov_provisioner.c  \
  $(MESH_ROOT)/mesh/prov/src/nrf_mesh_prov.c  \
  $(MESH_ROOT)/mesh/prov/src/provisioning.c  \
  $(MESH_ROOT)/mesh/prov/src/prov_utils.c  \
  $(MESH_ROOT)/mesh/prov/src/prov_beacon.c  \
  $(MESH_ROOT)/mesh/prov/src/prov_provisionee.c \
  $(MESH_ROOT)/mesh/access/src/access.c \
  $(MESH_ROOT)/mesh/access/src/access_publish.c \
  $(MESH_ROOT)/mesh/access/src/access_reliable.c  \
  $(MESH_ROOT)/mesh/access/src/device_state_manager.c \
  $(MESH_ROOT)/mesh/dfu/src/nrf_mesh_dfu.c \
  $(MESH_ROOT)/mesh/stack/src/mesh_stack.c \
  $(MESH_ROOT)/models/config/src/config_server.c \
  $(MESH_ROOT)/models/config/src/composition_data.c \
  $(MESH_ROOT)/models/config/src/packed_index_list.c \
  $(MESH_ROOT)/models/health/src/health_server.c \
  $(MESH_ROOT)/external/micro-ecc/uECC.c \
  $(MESH_ROOT)/examples/common/src/assertion_handler_weak.c \
  $(MESH_ROOT)/examples/common/src/mesh_provisionee.c \
  $(SDK_ROOT)/components/softdevice/common/nrf_sdh.c \
  $(MESH_ROOT)/examples/common/src/simple_hal.c \
  $(MESH_ROOT)/models/simple_on_off/src/simple_on_off_server.c \
  $(MESH_ROOT)/examples/common/src/mesh_softdevice_init.c \
  $(MESH_ROOT)/examples/common/src/mesh_app_utils.c \
  $(MESH_ROOT)/examples/common/src/rtt_input.c \
  $(MESH_ROOT)/external/rtt/src/SEGGER_RTT.c \

  

# Include folders common to all targets
INC_FOLDERS += \
  $(SDK_CONFIG) \
  $(SDK_ROOT)/components \
  $(SDK_ROOT)/components/softdevice/s140/headers \
  $(SDK_ROOT)/modules/nrfx/mdk \
  $(SDK_ROOT)/components/libraries/experimental_log \
  $(PROJ_DIR) \
  $(SDK_ROOT)/components/libraries/strerror \
  $(SDK_ROOT)/components/toolchain/cmsis/include \
  $(SDK_ROOT)/components/libraries/util \
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
  $(SDK_ROOT)/components/softdevice/common/ \
```
Foram adicionados todos os Paths para que sejam compilados os arquivos .c adicionados na seção acima.
```
  $(MESH_ROOT)/mesh/core/api \
  $(MESH_ROOT)/mesh/core/include \
  $(MESH_ROOT)/mesh/bearer/api \
  $(MESH_ROOT)/mesh/bearer/include \
  $(MESH_ROOT)/mesh/prov/api \
  $(MESH_ROOT)/mesh/prov/include \
  $(MESH_ROOT)/mesh/access/api \
  $(MESH_ROOT)/mesh/access/include \
  $(MESH_ROOT)/mesh/dfu/api \
  $(MESH_ROOT)/mesh/dfu/include \
  $(MESH_ROOT)/mesh/stack/api \
  $(MESH_ROOT)/models/config/include \
  $(MESH_ROOT)/models/health/include \
  $(MESH_ROOT)/external/micro-ecc \
  $(MESH_ROOT)/examples/common/include \
  $(SDK_ROOT)/examples/peripheral/saadc/include \
  $(MESH_ROOT)/models/simple_on_off/include \
  $(SDK_ROOT)/components/libraries/fds \
  $(MESH_ROOT)/examples/common/src \
  $(MESH_ROOT)/models/simple_on_off/src \
  
  
  
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
```
Para não ocorrer erros de “softdevice not found” na compilação dos arquivos foi adicionado as seguintes linhas na Flag: CFLAGS
```
CFLAGS += -DNRF52_SERIES
CFLAGS += -DCONFIG_APP_IN_CORE
CFLAGS += -DNRF_MESH_LOG_ENABLE=NRF_LOG_USES_RTT
CFLAGS += -DNRF_SD_BLE_API_VERSION=6
CFLAGS += -DS140
```
```
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mthumb -mabi=aapcs
CFLAGS += -Wall -Werror
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
# keep every function in a separate section, this allows linker to discard unused ones
CFLAGS += -ffunction-sections -fdata-sections -fno-strict-aliasing
CFLAGS += -fno-builtin -fshort-enums

# C++ flags common to all targets
CXXFLAGS += $(OPT)

# Assembler flags common to all targets
ASMFLAGS += -g3
ASMFLAGS += -mcpu=cortex-m4
ASMFLAGS += -mthumb -mabi=aapcs
ASMFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
ASMFLAGS += -DBOARD_PCA10056
```
A mesma coisa da seção acima foi feita na Flag: ASMFLAGS
```
ASMFLAGS += -DNRF52
ASMFLAGS += -DNRF52_SERIES
ASMFLAGS += -DS140
```
```
ASMFLAGS += -DNRF_SD_BLE_API_VERSION=6
ASMFLAGS += -DCONFIG_APP_IN_CORE
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

```

