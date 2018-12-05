## Usando adaptador FTDI + SAADC

O código fonte foi feito com base no saadc que está dentro de
```nrf52_sdk_15.0.0/examples/peripheral/saadc```. O objetivo desse exemplo foi verificar a facilidade de uso do sdk e configuração do conversor analógico/digital. Para visualizar a saída dos dados foi usado o NRF_LOG mostrando os valores na saída serial FTDI, para captura dos dados na serial foi usado o picocom.

#### main.c

```
/** @file
 * @defgroup nrf_adc_example main.c
 * @{
 * @ingroup nrf_adc_example
 * @brief ADC Example Application main file.
 *
 * This file contains the source code for a sample application using ADC.
 *
 * @image html example_board_setup_a.jpg "Use board setup A for this example."
 */

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "nrf.h"
#include "nrf_drv_saadc.h"
#include "nrf_drv_ppi.h"
#include "nrf_drv_timer.h"
#include "boards.h"
#include "app_error.h"
#include "nrf_delay.h"
#include "app_util_platform.h"
#include "nrf_pwr_mgmt.h"

#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"

#define SAMPLES_IN_BUFFER 4

volatile uint8_t state = 1;

static const nrf_drv_timer_t m_timer = NRF_DRV_TIMER_INSTANCE(0);
static nrf_saadc_value_t     m_buffer_pool[2][SAMPLES_IN_BUFFER];
static nrf_ppi_channel_t     m_ppi_channel;
//static uint32_t              m_adc_evt_counter;


void timer_handler(nrf_timer_event_t event_type, void * p_context)
{

}


void saadc_sampling_event_init(void)
{
    ret_code_t err_code;

    err_code = nrf_drv_ppi_init();
    APP_ERROR_CHECK(err_code);

    nrf_drv_timer_config_t timer_cfg = NRF_DRV_TIMER_DEFAULT_CONFIG;
    timer_cfg.bit_width = NRF_TIMER_BIT_WIDTH_32;
    err_code = nrf_drv_timer_init(&m_timer, &timer_cfg, timer_handler);
    APP_ERROR_CHECK(err_code);

    /* setup m_timer for compare event every 400ms */
    uint32_t ticks = nrf_drv_timer_ms_to_ticks(&m_timer, 300);
    nrf_drv_timer_extended_compare(&m_timer,
                                   NRF_TIMER_CC_CHANNEL0,
                                   ticks,
                                   NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK,
                                   false);
    nrf_drv_timer_enable(&m_timer);

    uint32_t timer_compare_event_addr = nrf_drv_timer_compare_event_address_get(&m_timer,
                                                                                NRF_TIMER_CC_CHANNEL0);
    uint32_t saadc_sample_task_addr   = nrf_drv_saadc_sample_task_get();

    /* setup ppi channel so that timer compare event is triggering sample task in SAADC */
    err_code = nrf_drv_ppi_channel_alloc(&m_ppi_channel);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_ppi_channel_assign(m_ppi_channel,
                                          timer_compare_event_addr,
                                          saadc_sample_task_addr);
    APP_ERROR_CHECK(err_code);
}


void saadc_sampling_event_enable(void)
{
    ret_code_t err_code = nrf_drv_ppi_channel_enable(m_ppi_channel);

    APP_ERROR_CHECK(err_code);
}


void saadc_callback(nrf_drv_saadc_evt_t const * p_event)
{
	float soma = 0;

	if (p_event->type == NRF_DRV_SAADC_EVT_DONE){

	        nrf_drv_saadc_buffer_convert(p_event->data.done.p_buffer, SAMPLES_IN_BUFFER);


	        int i;

	        for (i = 0; i < SAMPLES_IN_BUFFER; i++)
	        {
//	        	NRF_LOG_INFO("posicao %d -> %d", i, p_event->data.done.p_buffer[i]);
	            soma =  soma + p_event->data.done.p_buffer[i]; // @suppress("Symbol is not resolved")

	        }


	        NRF_LOG_INFO("%d", soma/SAMPLES_IN_BUFFER);
	        soma = 0;
	}
}
```
Na função saadc_init foram adicionados novos parâmetros de configuração para funcionamento adequeado do conversor AD/DC.

```
void saadc_init(void)
{
    ret_code_t err_code;
    nrf_saadc_channel_config_t channel_config;
    nrf_drv_saadc_config_t saadc_config;


    saadc_config.low_power_mode = true;
    saadc_config.resolution = NRF_SAADC_RESOLUTION_10BIT;
    saadc_config.oversample = NRF_SAADC_OVERSAMPLE_4X;
    saadc_config.interrupt_priority = APP_IRQ_PRIORITY_LOW;


    err_code = nrf_drv_saadc_init(&saadc_config, saadc_callback);
    APP_ERROR_CHECK(err_code);


    channel_config.burst = NRF_SAADC_BURST_DISABLED;
    channel_config.reference = NRF_SAADC_REFERENCE_INTERNAL;
    channel_config.gain = NRF_SAADC_GAIN1_4;
    channel_config.acq_time = NRF_SAADC_ACQTIME_15US;
    channel_config.mode = NRF_SAADC_MODE_SINGLE_ENDED;
    channel_config.pin_p = NRF_SAADC_INPUT_AIN1;
    channel_config.pin_n = NRF_SAADC_INPUT_DISABLED;
    channel_config.resistor_p = NRF_SAADC_RESISTOR_PULLDOWN;
    channel_config.resistor_n = NRF_SAADC_RESISTOR_DISABLED;

    err_code = nrf_drv_saadc_channel_init(0, &channel_config);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_saadc_buffer_convert(m_buffer_pool[0], SAMPLES_IN_BUFFER);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_saadc_buffer_convert(m_buffer_pool[1], SAMPLES_IN_BUFFER);
    APP_ERROR_CHECK(err_code);

}
```
```
/**
 * @brief Function for main application entry.
 */
int main(void)
{
    uint32_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    NRF_LOG_DEFAULT_BACKENDS_INIT();

    ret_code_t ret_code = nrf_pwr_mgmt_init();
    APP_ERROR_CHECK(ret_code);

    saadc_init();
    saadc_sampling_event_init();
    saadc_sampling_event_enable();
    NRF_LOG_INFO("SAADC HAL simple example started.");

    while (1)
    {
        nrf_pwr_mgmt_run();
        NRF_LOG_FLUSH();
    }
}


/** @} */
```
