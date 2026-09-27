FROM eclipse-temurin:17-jre

WORKDIR /minecraft

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

COPY server /minecraft

EXPOSE 25565

CMD ["sh", "start.sh"]