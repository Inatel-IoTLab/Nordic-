#!/bin/bash


PATH_SDK=/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/examples/light_switch
 
# (echo -e "\nErasing devices start\n")
# (nrfjprog -f nrf52 -s 683627974 --eraseall)
# (nrfjprog -f nrf52 -s 683095763 --eraseall)
# (nrfjprog -f nrf52 -s 683920269 --eraseall)
# (nrfjprog -f nrf52 -s 683597026 --eraseall)
# (echo -e "\nErasing devices end\n")

(echo -e "\n\nFlashing device 683627974 - Client")
(nrfjprog -f nrf52 --sectorerase -s 683627974 --program $PATH_SDK/client/light_switch_client_nrf52840_xxAA_s140_6.0.0.hex)
(echo -e "\n\nFlashing device 683597026 - Provisioner")
(nrfjprog -f nrf52 --sectorerase -s 683597026 --program $PATH_SDK/provisioner/light_switch_provisioner_nrf52840_xxAA_s140_6.0.0.hex)
(echo -e "\n\nFlashing device 683095763 - Server 1")
(nrfjprog -f nrf52 --sectorerase -s 683095763 --program $PATH_SDK/server/light_switch_server_nrf52840_xxAA_s140_6.0.0.hex)
(echo -e "\n\nFlashing device 683920269 - Server 2")
(nrfjprog -f nrf52 --sectorerase -s 683920269 --program $PATH_SDK/server/light_switch_server_nrf52840_xxAA_s140_6.0.0.hex)


(echo -e "\Reseting devices start\n")
(nrfjprog -r -f nrf52 -s 683627974)
(nrfjprog -r -f nrf52 -s 683095763)
(nrfjprog -r -f nrf52 -s 683920269)
(nrfjprog -r -f nrf52 -s 683597026)
(echo -e "\Reseting devices end\n")

echo "Aguardando dispositivos estabilizarem....."
sleep 10


(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683627974 -RTTTelnetport 19021') &
(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683095763 -RTTTelnetport 19022') &
(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683920269 -RTTTelnetport 19023') &
(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683597026 -RTTTelnetport 19024') &

(terminator -T 'Client' -e 'JLinkRTTClient -RTTTelnetport 19021') &
(terminator -T 'Server 1' -e 'JLinkRTTClient -RTTTelnetport 19022') &
(terminator -T 'Server 2' -e 'JLinkRTTClient -RTTTelnetport 19023') &
(terminator -T 'Provisioner' -e 'JLinkRTTClient -RTTTelnetport 19024') &
! / bin / bash PATH_SDK = / home / mazzer / trabalho / nórdico / sdk / nrf5_SDK_for_Mesh_v2.0.1_build / examples / light_switch   # (echo -e "\ nEliminar dispositivos iniciados \ n") # (nrfjprog -f nrf52 -s 683627974 --eraseall) # (nrfjprog -f nrf52 -s 683095763 --eraseall) # (nrfjprog -f nrf52 -s 683920269 --eraseall) # (nrfjprog -f nrf52 -s 683597026 --eraseall) # (echo -e "\ nEliminar dispositivos final \ n") (echo -e "\ n \ nFlashing device 683627974 - Client") (nrfjprog -f nrf52 --sectorerase -s 683627974 --program $ PATH_SDK / client / light_switch_client_nrf52840_xxAA_s140_6.0.0.hex) (echo -e "\ n \ nDispositivo de flash 683597026 - Provisioner") (nrfjprog -f nrf52 --sectorerase -s 683597026 --program $ PATH_SDK / provisioner / light_switch_provisioner_nrf52840_xxAA_s140_6.0.0.hex) (echo -e "\ n \ nDispositivo de flash 683095763 - Servidor 1") (nrfjprog -f nrf52 --sectorerase -s 683095763 --program $ PATH_SDK / server / light_switch_server_nrf52840_xxAA_s140_6.0.0.hex) (echo -e "\ n \ nDispositivo de flash 683920269 - Servidor 2") (nrfjprog -f nrf52 --sectorerase -s 683920269 --program $ PATH_SDK / server / light_switch_server_nrf52840_xxAA_s140_6.0.0.hex) (echo -e "\ Dispositivos de redefinição iniciados \ n") (nrfjprog -r -f nrf52 -s 683627974) (nrfjprog -r -f nrf52 -s 683095763) (nrfjprog -r -f nrf52 -s 683920269) (nrfjprog -r -f nrf52 -s 683597026) (echo -e "\ Dispositivos de redefinição final \ n") echo "Aguardando aparelhos estabilizarem ....." dormir 10 (terminador -e 'JLinkExe -device NRF52840_XXAA -se SWD-speed 12000 -autoconnect 1 -SelectEmuBySN 683627974 -RTTTelnetport 19021') & (terminador -e 'JLinkExe -device NR
translated from: English