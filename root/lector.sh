#!/bin/sh

PYTHONOK=$(pidof python) #Comprobamos si python scanner tiene PID
#FECHA=$(date "+%m/%d/%y")
#HORA=$(date "+%H:%M:%S")
CODIGO="0"

while :
do

if [ $PYTHONOK -n ]; then
echo "Si no hay python levantado, lo levantamos"
CODIGO=$(python /root/scanner.py $) #Metemos el valor recibido del scanner a la variable $CODIGO
FECHA=$(date "+%m/%d/%y")
HORA=$(date "+%H:%M:%S")

sqlite3 /root/control.db "INSERT INTO horarios (id, fecha, hora) VALUES ('$CODIGO', '$FECHA', '$HORA')"
echo $CODIGO #Mostramos en pantalla $CODIGO
else
echo "Si hay python levantado"
fi



done
