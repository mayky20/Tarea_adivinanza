#!/bin/bash
adivina() {
    resp_correcta=$(ls -A|wc -l)
    while true;
    do
        echo "Holaaaa! ¿Puedes adivinar cuantos archivos hay en el directorio?"
        read  num_adivina
        if [[ $num_adivina ]] && [ $num_adivina -eq $num_adivina 2>/dev/null ]
            then
                if [ $num_adivina -lt $resp_correcta ]
                then
                    echo "¡Intentalo de nuevo!.....Tu respuesta es menor que la verdadera"
                continue;
                elif [ $num_adivina -gt $resp_correcta ]
                then
                    echo "Intentalo de nuevo!.....Tu respuesta es mayor que la verdadera"
                continue;
                else
                    echo " ¡Felicidades!........¡Tu respuesta es correcta!"
                break;
                fi
            else
                echo "Datos erroneas. Porfavor ingresa solo numeros enteros"
        fi
    done
}
adivina