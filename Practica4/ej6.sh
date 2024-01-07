#!/bin/bash

info_sistema=$(uptime)
fecha_actual=$(date '+%H:%M:%S')

historial_data="${fecha_actual} up ${info_sistema} $(who | awk '{print $1}' | sort -u | wc -l) user(s) $(ps aux)"

echo "$historial_data" >> /var/log/historial.txt

echo "Datos escritos en /var/log/historial.txt."

# Y añadiremos en el crontab > */10 * * * * /ejercicios_bash/practica4/ej6.sh en mi caso

