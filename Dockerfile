# Usa la imagen de Java 21
FROM eclipse-temurin:21-jdk-jammy

# Crear usuario mcuser (opcional pero recomendable)
RUN useradd -m mcuser
USER mcuser
WORKDIR /home/mcuser

# Copiar los archivos del servidor
COPY --chown=mcuser:mcuser . .

# Asegura permisos en start.sh
RUN chmod +x start.sh

# Exponer el puerto de Minecraft
EXPOSE 25565

# Comando por defecto
CMD ["bash", "start.sh"]
