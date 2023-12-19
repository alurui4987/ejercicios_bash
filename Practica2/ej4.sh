#!/bin/bash

archivo="$1"

if [ -e "$archivo" ]; then
    echo "El archivo $archivo existe."

    if [ -r "$archivo" ]; then
        echo "Tiene permiso de lectura $archivo."
        echo "Contenido:"
        cat "$archivo"
    else
        echo "No tiene permiso de lectura para $archivo."
    fi

else
    echo "El archivo $archivo no existe."
fi
