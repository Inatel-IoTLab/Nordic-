

set(command "/usr/local/bin/cmake;-Dmake=${make};-Dconfig=${config};-P;/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/nRF5_SDK_15.0.0_a53641a/src/nRF5_SDK-stamp/nRF5_SDK-download--impl.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/nRF5_SDK_15.0.0_a53641a/src/nRF5_SDK-stamp/nRF5_SDK-download-out.log"
  ERROR_FILE "/home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/nRF5_SDK_15.0.0_a53641a/src/nRF5_SDK-stamp/nRF5_SDK-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/nRF5_SDK_15.0.0_a53641a/src/nRF5_SDK-stamp/nRF5_SDK-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "nRF5_SDK download command succeeded.  See also /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v2.0.1_build/nRF5_SDK_15.0.0_a53641a/src/nRF5_SDK-stamp/nRF5_SDK-download-*.log")
  message(STATUS "${msg}")
endif()
