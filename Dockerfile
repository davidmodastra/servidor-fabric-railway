<<<<<<< HEAD
# Usa la imagen de Java 21
FROM eclipse-temurin:21-jdk-jammy

# Crear usuario mcuser (opcional pero recomendable)
=======
# Usa la imagen oficial de Java 21
FROM eclipse-temurin:21-jdk

# Crea el usuario mcuser para ejecutar el servidor
>>>>>>> cb6b816506c02cce0837609676f025e20bc69db1
RUN useradd -m mcuser
USER mcuser
WORKDIR /home/mcuser

<<<<<<< HEAD
# Copiar los archivos del servidor
COPY --chown=mcuser:mcuser . .

# Asegura permisos en start.sh
RUN chmod +x start.sh

# Exponer el puerto de Minecraft
EXPOSE 25565

# Comando por defecto
=======
# Copia los archivos del proyecto a la imagen del contenedor
COPY --chown=mcuser:mcuser . .

# Asegura los permisos de ejecución para start.sh
RUN chmod +x start.sh

# Expone el puerto 25565 para la conexión del servidor
EXPOSE 25565

# Ejecuta el servidor con la configuración de memoria
>>>>>>> cb6b816506c02cce0837609676f025e20bc69db1
CMD ["bash", "start.sh"]
