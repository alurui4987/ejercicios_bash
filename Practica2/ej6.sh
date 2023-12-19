#!/bin/bash

numero="$1"
tabla=1

while [ "$tabla" -le 10 ]; do
    resultado=$((numero * tabla))
    echo "$numero x $tabla = $resultado"
    ((tabla++))
done

