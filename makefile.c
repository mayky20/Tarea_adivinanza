README.md:
	echo "# Juego de Adivinanzas" > README.md
	echo "" >> README.md
	echo Creado el $$(date +%D) a las $$(date +%H:%M:%S) >> README.md
	echo "" >> README.md
	echo Script adivina.sh contiene $$(wc -l adivina.sh | egrep -o "[0-9]+") lineas >> README.md