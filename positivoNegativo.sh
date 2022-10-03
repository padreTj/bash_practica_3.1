#!bin/bash
# Alvarez de la rocha luis enrique\
# script que determina si un numero es positivo negativo o cero

read -p "Ingrese un numero: " num

if [ $num -gt 0 ]
then
    echo "El numero es positivo"
elif [ $num -lt 0 ]
then
    echo "El numero es negativo"
else
    echo "El numero es cero"
fi