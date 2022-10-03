#!/bin/bash
# Alvarez de la rocha luis enrique
# Calculadora operaciones basicas 

opc=1

while [ $opc -eq 1 ] 
do

read -p "Ingrese el primer numero: " num1
read -p "Ingrese el segundo numero: " num2

echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicacion"
echo "4. Division"
echo "5. potencia"

read -p "Ingrese una opcion: " opcion

if (( $opcion == 1 )); then
        echo "La suma es: $(($num1 + $num2))"
elif (( $opcion == 2 )); then
        echo "La resta es: $(($num1 - $num2))"
elif (( $opcion == 3 )); then
        echo "La multiplicacion es: $(($num1 * $num2))"
elif (( $opcion == 4 )); then
        echo "La division es: $(($num1 / $num2))"
elif (( $opcion == 5 )); then
        echo "La potencia es: $(($num1 ** $num2))"
fi

read -p "1)Continuar 2)Salir" opc
clear
done

