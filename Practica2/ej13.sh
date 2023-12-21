#!/bin/bash

read -p "Introduce un numerin: " numero

while [ $numero -ne 0 ]
do
    read -p "Introduce otro numerin: " numero
    resultado=$((resultado+numero))
    echo "$resultado"
done
