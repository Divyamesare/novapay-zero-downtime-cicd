# NovaPay Zero-Downtime CI/CD Platform

A local DevOps and CI/CD demonstration project for a fictional digital banking application.

## Features

- Java 21 and Spring Boot REST API
- Health and application information endpoints
- Automated unit tests using Maven
- Docker container running as a non-root user
- Trivy vulnerability scanning
- Security reports stored in the repository

## Technology Stack

Java 21, Spring Boot, Maven, Docker, Trivy, Git, GitHub

## Run Locally

Test the application:

    mvn clean test

Build the application:

    mvn clean package

Build the Docker image:

    docker build -t novapay-api:1.0.1 .

Run the container:

    docker run -d --name novapay-demo -p 8082:8080 novapay-api:1.0.1

Health endpoint:

    http://localhost:8082/api/health

Application information endpoint:

    http://localhost:8082/api/v1/info

## Security

Trivy scan reports are stored in security/container/. Review findings and remediate vulnerabilities before production deployment.

## Project Status

This is a learning and assessment project. Additional CI/CD automation, deployment strategies, rollback, and security controls are planned for incremental implementation.

## Disclaimer

This is a demonstration project, not a production banking platform.
