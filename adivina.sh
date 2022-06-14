#!/usr/bin/env bash
echo "Inicio del Juego"
echo "Adivina el número de archivos en la carpeta"
archivos=$(find . -maxdepth 1 -type f | wc -l)
read respuesta
while [$respuesta -ne $archivos]
do
	if[[$respuesta lt $archivos]]
	then
		echo"Tu respuesta es mayor, intenta de nuevo"
	continue;
	else
		echo"Tu respuesta es menor, intenta de nuevo"
	continue;
	fi
done
echo "Le atinaste!!!!..... "
echo "Hay $archivos archivos"
echo "Buen Juego"
sleep 1m