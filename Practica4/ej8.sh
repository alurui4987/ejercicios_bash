#!/bin/bash

echo "$(date) $(who | cut -d' ' -f1 | sort -u | wc -l)" >> /tmp/usuarios

#en el crontab añadiremos lo siguiente > */2 * * * * /ejercicios_bash/practica4/ej8.sh en mi caso
