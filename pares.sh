#!/bin/bash
# Alvarez de la rocha luis enrique
# muestra si los numeros son pares o impares (solo 2 numeros)

for ((i=1; i<=2; i++))
do
    read -p "Ingrese un numero: " num
    if [ $(($num % 2)) -eq 0 ]
    then
        echo "El numero $num es par"
    else
        echo "El numero $num es impar"
    fi
done