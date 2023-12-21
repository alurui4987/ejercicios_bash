#!/bin/bash


function menu(){
    echo "#################################"
    echo "############    #################"
    echo "########### MENU ################"
    echo "###########      ################"
    echo "#################################"
    echo "####### 1. Sumar ################"
    echo "####### 2. Restar ###############"
    echo "####### 3. Dividir ##############"
    echo "####### 4. Multiplicar ##########"
    echo "####### 0. Salir ################"
    echo "#################################"
    read -p "Introduce una opción del menú: " opc
}

function suma(){
    read -p "Dime un numero: " n1
    read -p "Dime otro numero: " n2
    resultado=$((n1+n2))
    echo "El resultado de tu suma es: $resultado"
    echo ""
}

function resta(){
    read -p "Dime un numero: " n1
    read -p "Dime otro numero: " n2
    resultado=$((n1-n2))
    echo "El resultado de tu resta es: $resultado"
    echo ""
}

function dividir(){
    read -p "Dime un numero: " n1
    read -p "Dime otro numero: " n2
    resultado=$((n1/n2))
    echo "El resultado de tu división es: $resultado"
    echo ""
}

function multiplicar(){
    read -p "Dime un numero: " n1
    read -p "Dime otro numero: " n2
    resultado=$((n1*n2))
    echo "El resultado de tu multiplicación es: $resultado"
    echo ""
}
menu
while [[ $opc -ne 0 ]]
do
    case $opc in 
        1)
            suma
        ;;
        2)
            resta
        ;;
        3)
            dividir
        ;;
        4)
            multiplicar
        ;;
    *)
        echo "Selecciona una de las opciones del menú"
    esac
    sleep 2
    menu
done

