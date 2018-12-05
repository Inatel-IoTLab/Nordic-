## Relatório

#### Introdução
<p>O objetivo do trabalho realizado com o kit da Nordic Semiconductor foi para investigar suas funcionalidades e aplicações que poderiam ser realizadas com o mesmo. O nRF52840 é uma placa que contém diversos módulos de desenvolvimento como Bluetooth 5, Bluetooth mesh, Thread,Zigbee, 802.15.4, ANT e 2.4 GHz com aplicações proprietárias no nRF52840 SoC.</p>
<p>A princípio foram trabalhados os módulos básicos de periféricos como Logger RTT,
comunicação TX/RX e conversor analógico/digital, após o desenvolvimento das atividades
primárias seria realizado o estudo da parte de Bluetooth Mesh integrado aos periféricos básicos.</p>
<p>Todas as informações presentes neste relatório foram retiradas da documentação oficial daNordic.</p>

#### Desenvolvimento
<p>Todos os testes foram realizados com a seguinte versões:</p>
1. - Periféricos: nrf52_sdk_15.0.0.</br>
2. - Bluetooth Mesh: nrf52_sdk_for_mesh_v2.0.1_src.</br>

<p>O ambiente de desenvolvimento foi o linux Ubuntu 16.04 LTS e a IDE escolhida foi o eclipse. Para realizar as configurações iniciais do desenvolvimento foi seguida a sesssão “Getting Started” presentes na documentação [1]. O upload dos códigos são realizados via nrfjprog, através do seguinte comando:</p>

```nrfjprog -f nrf52 – – chiperase – – program arquivo.hex```
<p>Para realizar o debug do código foi usado um adaptador FTDI [figura 1] conectado ao TX/RX da placa. Para visualizar os dados vindos na serial foi usado o picocom [2] usando o seguinte comando no terminal linux:</p>

```picocom -b115200 /dev/ttyUSB0```
