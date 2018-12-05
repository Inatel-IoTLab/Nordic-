flash_light_switch_client: 
	@echo Flashing: light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/light_switch/client/light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52
	
flash_light_switch_server: 
	@echo Flashing: light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/light_switch/server/light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_inatel_light_switch_client: 
	@echo Flashing: inatel_light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/inatel_light_switch/client/inatel_light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52
	
flash_inatel_light_switch_server: 
	@echo Flashing: inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/inatel_light_switch/server/inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_pb_serial_server: 
	@echo Flashing: pb_remote_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/pb_remote/server/pb_remote_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_pb_serial_client: 
	@echo Flashing: pb_remote_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/pb_remote/client/pb_remote_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_serial: 
	@echo Flashing: serial_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/serial/serial_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52
	
flash_softdevice: 
	@echo Flashing: s140_nrf52_6.0.0_softdevice.hex
	nrfjprog -f nrf52 --chiperase --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/bin/softdevice/s140_nrf52_6.0.0_softdevice.hex
	nrfjprog --reset -f nrf52
	
flash_inatel_env: all
	#Flashing Client
	@echo Flashing Client: s140_nrf52_6.0.0_softdevice.hex
	nrfjprog -f nrf52 --chiperase -s 683627974 --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/bin/softdevice/s140_nrf52_6.0.0_softdevice.hex
	nrfjprog --reset -f nrf52 -s 683627974

	@echo Flashing Client: light_switch_client_nrf52840_xxAA_s140_6.0.0.hex
	nrfjprog -f nrf52 --sectorerase -s 683627974 --program ./examples/light_switch/client/light_switch_client_nrf52840_xxAA_s140_6.0.0.hex
	nrfjprog --reset -f nrf52 -s 683627974

	#Flashing Server 1
	@echo Flashing Server 1: s140_nrf52_6.0.0_softdevice.hex
	nrfjprog -f nrf52 --chiperase -s 683920269 --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/bin/softdevice/s140_nrf52_6.0.0_softdevice.hex
	nrfjprog --reset -f nrf52 -s 683920269

	@echo Flashing Server: inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase -s 683920269 --program ./examples/light_switch/server/light_switch_server_nrf52840_xxAA_s140_6.0.0.hex
	nrfjprog --reset -f nrf52 -s 683920269

	#Flashing Server 2
	@echo Flashing Server 2: s140_nrf52_6.0.0_softdevice.hex
	nrfjprog -f nrf52 --chiperase -s 683095763 --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/bin/softdevice/s140_nrf52_6.0.0_softdevice.hex
	nrfjprog --reset -f nrf52 -s 683095763

	@echo Flashing Server: inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase -s 683095763 --program ./examples/light_switch/server/light_switch_server_nrf52840_xxAA_s140_6.0.0.hex
	nrfjprog --reset -f nrf52 -s 683095763
	
	#Flashing Provisioner
	@echo Flashing Provisioner: s140_nrf52_6.0.0_softdevice.hex
	nrfjprog -f nrf52 --chiperase -s 683597026 --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_src/bin/softdevice/s140_nrf52_6.0.0_softdevice.hex
	nrfjprog --reset -f nrf52 -s 683597026

	@echo Flashing Provisioner: inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase -s 683597026 --program ./examples/light_switch/provisioner/light_switch_provisioner_nrf52840_xxAA_s140_6.0.0.hex
	nrfjprog --reset -f nrf52 -s 683597026

