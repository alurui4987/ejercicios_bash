#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Añade un directorio."
    exit 
fi

directorio=$1
count=0

if [ ! -d $directorio ]; then
    echo "El directorio $directorio no existe"
    exit 
fi

for i in $directorio/* ; do
    if [ -f $i ]; then
        echo "$i es un fichero"
    elif [ -d $i ]; then
        echo "$i es un directorio"
    fi
    ((count++))
done

echo "Número total de entradas: $count"
