#!/bin/bash

# Valido parámetros
if [[ "$1" = "-h" ]]; then
  echo "Uso: $0 <extensión>"
  exit 0
fi

if [[ $# != 1 ]]; then
  echo "Uso: $0 <extensión>"
  exit 1
fi

# Busco la cantidad de archivos con la extensión especificada
cant=$(find ~ -type f -name "*.$1" | wc -l)

# Guardo el resultado en el archivo reporte.txt
echo "$(whoami) $cant" > reporte.txt

exit 0
