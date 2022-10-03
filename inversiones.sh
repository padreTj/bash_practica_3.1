#!/bin/bash
# Alvarez de la rocha luis enrique
# script para calcular inversiones

read -p "Ingrese el monto de la inversion: " monto
read -p "Ingrese el interes anual: " interes
read -p "Ingrese el numero de años: " a

for ((i=1; i<=a; i++))
do
    monto=$(echo "scale=2; $monto + ($monto * $interes / 100)" | bc)
    echo "El monto en el año $i es: $monto"
done


