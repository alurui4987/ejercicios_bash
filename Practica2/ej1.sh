#!/bin/bash

numero1=$1
numero2=$2

if [ "$numero1" -eq "$numero2" ]; then
    echo "Los números son iguales."
elif [ "$numero1" -lt "$numero2" ]; then
    echo "$numero2 es mayor que $numero1."
else
    echo "$numero1 es mayor que $numero2."
fi

