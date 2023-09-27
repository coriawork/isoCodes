#!/bin/bash

#valido parametros
if [[ "$1" = "-h" ]]; then
	echo ej16 necesita como argumento la extension de la cual se genera un archivo reporte
	exit 0
fi

if [[ $# < 1 ]]; then
	echo need arguments.
	echo '-h to help'
	exit 1
fi

if [[ $# > 1 ]]; then
	echo to many arguments
	exit 2
fi

#busco a cantidad de archivos con a extencion
#creo un archivo temporal para no mostrar todo en pantalla

#chmod -w $TMPDIR/findtmp.txt
find ~ -type f -name "*.$1" > "findtmp.txt"

cant=$(wc -l "findtmp.txt" | cut -d ' ' -f 1)
rm findtmp.txt
echo "$(whoami) $cant">reporte.txt

exit 0