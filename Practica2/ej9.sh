#!/bin/bash

read -p "Ingresa un número: " numero

resultado=$(expr $numero / 2)

if [ $resultado -eq 0 ]; then
    echo "$numero es par."
else
    echo "$numero es impar."
fi
