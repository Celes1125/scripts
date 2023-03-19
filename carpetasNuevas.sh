#!/bin/bash
#Hacer nuevas carpetas a partir de una lista

#1. creo un array vacío para rellenarlo con los nombres para las carpetas/archivos...
nombres=()

#2. Relleno el array extrayendo los datos del archivo csv
cd ~/scripts
cat lista.csv
while IFS= read line
do
    for ((i=0;i<${#nombres[*]};i++))
    do
     ${nombres[i]}=$line
    done
  
done

echo ${nombres[*]}

#3. creo una carpeta general y luego recorro el array creando subcarpetas


for ((i=0;i<${#nombres[*]};i++))
do
    mkdir ${nombres[i]}
echo ls



echo "========================================================================"

