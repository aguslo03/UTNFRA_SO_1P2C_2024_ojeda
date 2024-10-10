#!/bin/bash

ARCHIVO="$HOME/repogit/UTNFRA_SO_1P2C_2024_ojeda/RTA_ARCHIVOS_Examen_20241009"
cat /proc/meminfo | grep 'MemTotal' > $ARCHIVO/Filtro_Basico.txt
sudo dmidecode -t chassis | grep 'Manufacturer' >> $ARCHIVO/Filtro_Basico.txt
