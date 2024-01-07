#!/bin/bash

if [ "$(date '+%u')" -eq 7 ]; then
    rm -rf /tmp/*
    echo "Carpeta temporal limpiada."
else
    echo "Hoy no es domingo, no se realizará la limpieza."
fi

# en crontab añadiremos lo siguiente > 0 2 * * 0 /ejercicios_bash/practica4/ej7.sh en mi caso

