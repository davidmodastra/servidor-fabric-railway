#!/bin/bash
set -e

# Usar el puerto que Railway asigna
: "${PORT:=25565}"

# Cambiar el puerto del server
sed -i "s/^server-port=.*/server-port=${PORT}/" server.properties || echo "server-port=${PORT}" >> server.properties

# Asegurar eula
echo "eula=true" > eula.txt

# Ejecutar el servidor con 2GB de RAM
java -Xms1G -Xmx2G -jar fabric-server-launch.jar nogui
