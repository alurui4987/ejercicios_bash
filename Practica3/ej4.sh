#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Error. La sintaxis correcta es ./leerdatos.sh archivo_datos.txt"
    exit 1
fi

archivo_datos=$1

while IFS=, read -r accion nombre apellido1 apellido2 grupo; do
    ./gestionusuarios.sh "$accion" "$nombre" "$apellido1" "$apellido2" "$grupo"
done < "$archivo_usuarios"

