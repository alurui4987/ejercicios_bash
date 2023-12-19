#!/bin/bash

# Número a adivinar (puedes cambiarlo según tus preferencias)
numero_secreto=42

echo "Introduce un número o introduce 0 para rendirte."

while :
do
    read -p "Introduce tu número: " numero

    if [ "$numero" -eq 0 ]; then
        echo "Te has rendido."
        break
    fi

    if [ "$numero" -eq "$numero_secreto" ]; then
        echo "Has adivinado el número secreto. ERES EL VERDADERO THE SPECIAL ONE"
        break
    elif [ "$numero" -lt "$numero_secreto" ]; then
        echo "El número es mayor"
    else
        echo "El número es menor"
    fi
done
