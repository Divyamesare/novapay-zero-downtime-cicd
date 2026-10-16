FROM eclipse-temurin:21-jre

WORKDIR /app

USER root
RUN apt-get update \
    && apt-get install -y --only-upgrade curl libcurl4t64 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN useradd --system --uid 10001 appuser

COPY target/novapay-api-1.0.2.jar app.jar

USER 10001

EXPOSE 8080

ENTRYPOINT ["java", "-XX:MaxRAMPercentage=75.0", "-jar", "/app/app.jar"]
