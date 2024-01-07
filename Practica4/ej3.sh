#!/bin/bash

cuarentena="/root/cuarentena"

if [ ! -d "$cuarentena" ]; then
    mkdir -p "$cuarentena"
fi

for archivo in *; do
    if grep -q "Hack" "$archivo"; then
        mv "$archivo" "$cuarentena/"
        echo "Se movió el archivo $archivo a $cuarentena/"
    fi
done

echo "Búsqueda completada."
