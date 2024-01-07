#!/bin/bash

directorio_backup="/etc"
archivo_destino="/root/copia_etc_$(date '+%Y%m%d%H%M%S').tgz"
tar -czf "$archivo_destino" "$directorio_backup"
echo "Copia de seguridad generada en $archivo_destino."
