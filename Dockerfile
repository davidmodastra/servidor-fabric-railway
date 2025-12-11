# Usa la imagen oficial de Java 21
FROM eclipse-temurin:21-jdk

# Crea el usuario mcuser para ejecutar el servidor
RUN useradd -m mcuser
USER mcuser
WORKDIR /home/mcuser

# Copia los archivos del proyecto a la imagen del contenedor
COPY --chown=mcuser:mcuser . .

# Asegura los permisos de ejecución para start.sh
RUN chmod +x start.sh

# Expone el puerto 25565 para la conexión del servidor
EXPOSE 25565

# Ejecuta el servidor con la configuración de memoria
CMD ["bash", "start.sh"]
