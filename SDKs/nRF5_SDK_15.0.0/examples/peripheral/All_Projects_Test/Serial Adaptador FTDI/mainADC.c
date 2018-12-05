#include <stdio.h>

#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_adc.h"


int main(void)
{
    NRF_LOG_INIT(NULL); // @suppress("Statement has no effect")
    NRF_LOG_DEFAULT_BACKENDS_INIT();

    /*
     * Initialize ADC
     */
    nrf_adc_config_t const * p_config;
    p_config->resolution = NRF_ADC_CONFIG_RES_10BIT;
    p_config->scaling = NRF_ADC_CONFIG_SCALING_INPUT_FULL_SCALE;
    p_config->reference = NRF_ADC_CONFIG_REF_VBG;
    p_config->extref = NRF_ADC_CONFIG_EXTREFSEL_NONE;
    p_config->input = NRF_ADC_CONFIG_INPUT_0;

    nrf_adc_init(&p_config);




    while (1)
    {
        NRF_LOG_FLUSH();
        NRF_LOG_INFO("Serial main");
    }
}
