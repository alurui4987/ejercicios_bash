#!/bin/bash
if [ "$#" -ne 2 ]; then
        echo "Inserte dos numeros por favor."
fi

numero1=$1
numero2=$2

resultado=$(($numero1 + $numero2))

echo "El resultado es $resultado"


