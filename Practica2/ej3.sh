#!/bin/bash

archivo="$1"

if [ -e "$archivo" ]; then
    echo "El archivo '$archivo' existe."
    if [ -f "$archivo" ]; then
        echo "'$archivo' es un archivo regular."
    else [ -d "$archivo" ]
        echo "'$archivo' es un directorio."
    fi

else
    echo "El archivo '$archivo' no existe."
fi
