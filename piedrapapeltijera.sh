#!/bin/bash
# Alvarez de la rocha luis enrique
# Crea un script llamado piedra_papel_tijeras.sh. Debe implementar el juego de piedra, papel, tijera donde la computadora elegirá de manera aleatoria la opción

opc=1
eleccion=0
G=0
E=0
P=0
while [ $opc -eq 1 ]
do
    computadora=$((RANDOM % 3 + 1))
    echo "1. Piedra"
    echo "2. Papel"
    echo "3. Tijera"
    
    read -p "ingrese una opcion: " eleccion
    
    if [ $eleccion -eq $computadora ]; then
    echo "Empate"
    E=$((E+1))
    elif [ $eleccion -eq 1 ] && [ $computadora -eq 2 ];then
    echo "Gana la computadora"
    P=$((P+1))
    elif [ $eleccion -eq 1 ] && [ $computadora -eq 3 ];then
    echo "Gana el usuario"
    G=$((G+1))
    elif [ $eleccion -eq 2 ] && [ $computadora -eq 1 ];then
    echo "Gana el usuario"
    G=$((G+1))
    elif [ $eleccion -eq 2 ] && [ $computadora -eq 3 ];then
    echo "Gana la computadora"
    P=$((P+1))
    elif [ $eleccion -eq 3 ] && [ $computadora -eq 1 ];then
    echo "Gana la computadora"
    P=$((P+1))
    elif [ $eleccion -eq 3 ] && [ $computadora -eq 2 ];then
    echo "Gana el usuario"
    G=$((G+1))
    fi
    read -p "1)Continuar 2)Salir:  " opc
    clear
done
    echo "Ganadas:" $G
    echo "Perdidas:" $P
    echo "Empates:" $E


