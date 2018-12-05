## Usando adaptador FTDI conectado ao TX/RX da placa
O código fonte foi feito com base no saadc que está dentro de
```nrf52_sdk_15.0.0/examples/peripheral/saadc ```. 
O objetivo desse exemplo foi verificar a facilidade de uso do sdk. Foram removidas todas as funções do saadc, foi deixado somente o código de log para ser mostrado na saida FTDI e visualizado com o picocom.

O exemplo [Serial Adaptador FTDI] deve ser colocado dentro da pasta ```nrf52_sdk_15.0.0/examples/peripheral/aqui ```

### mainLogger.c

```
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
```
    