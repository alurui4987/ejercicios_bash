#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Uso: ./apagar.sh ahora"
    echo "     ./apagar.sh  inserta el número de minutos"
    exit 1
fi

apagado=$1

if [ "$apagado" == "ahora" ]; then
    echo "Apagando el equipo ahora..."
    sudo shutdown -h now
elif [[ "$apagado" =~ ^[0-9]+$ ]]; then
    minutos=${apagado:2}
    echo "Apagando el equipo en $minutos minutos..."
    sudo shutdown -h +$minutos
else
    echo "Opción no válida. Por favor, use 'ahora' o 'Los minutos que quieras'."
    exit 1
fi
