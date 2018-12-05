## Usando adaptador FTDI conectado ao TX/RX da placa
O código fonte foi feito com base no saadc que está dentro de
```nrf52_sdk_15.0.0/examples/peripheral/saadc ```. 
O objetivo desse exemplo foi verificar a facilidade de uso do sdk. Foram removidas todas as funções do saadc foi deixado somente o código de log para ser mostrado na saida FTDI e visualizado com o picocom. Abaixo a estrutura de diretório:

Serial Adaptador FTDI<br/>
    .<br/>
    ├── ...<br/>
    ├── hex<br/>
    │&nbsp;&nbsp;├── license.txt<br/>
    │   ├── saadc_pca10056.hex<br/>
    │   └── unit<br/>
    ├── pca10056<br/>
    |   ├── blank<br/>
    |   |   ├── armgcc<br/>
    |   |   ├── Makefile<br/>
    |   |   └── saadc_gcc_nrf52.ld<br/>  
    |   ├── config<br/>
    |   |   └── sdk_config.h<br/>
    ├── mainLogger.c<br/>
    └── ...<br/>

    