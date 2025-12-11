FROM eclipse-temurin:17-jdk-jammy

RUN useradd -m mcuser
USER mcuser
WORKDIR /home/mcuser

COPY --chown=mcuser:mcuser . .

RUN chmod +x start.sh

EXPOSE 25565

CMD ["bash", "start.sh"]
