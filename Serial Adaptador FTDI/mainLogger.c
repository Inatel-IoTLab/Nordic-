#include <stdio.h>

#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"

int main(void)
{
    NRF_LOG_INIT(NULL); // @suppress("Statement has no effect")

    NRF_LOG_DEFAULT_BACKENDS_INIT();

    while (1)
    {
        NRF_LOG_FLUSH();
        NRF_LOG_INFO("Aplicação.");
    }
}
