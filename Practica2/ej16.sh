#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Añade un directorio."
    exit 
fi

directorio=$1

if [ ! -d $directorio ]; then
    echo "El directorio $directorio no existe"
    exit 
fi

subdirectorios=0
ficheros=0

for i in $directorio/* ; do
    if [[ -f $i ]]; then
        ((ficheros++))
    elif [[ -d $i ]]; then
        ((subdirectorios++))
    fi
done

echo "Los números de subdirectorios y ficheros de $directorio son:"
echo "El número de subdirectorios es: $subdirectorios"
echo "El número de ficheros es: $ficheros"
