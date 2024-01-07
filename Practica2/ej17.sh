#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Se requieren exactamente dos parámetros."
    exit 1
fi

archivo_origen="$1"
archivo_destino="$2"

if [ ! -f "$archivo_origen" ]; then
    echo "Error: El archivo de origen no existe o no es un archivo ordinario."
    exit 1
fi

if [ -e "$archivo_destino" ]; then
    echo "Error: Ya existe un archivo o directorio con el nombre indicado en el segundo parámetro."
    exit 1
fi

cp "$archivo_origen" "$archivo_destino"

echo "Archivo copiado exitosamente de $archivo_origen a $archivo_destino."
