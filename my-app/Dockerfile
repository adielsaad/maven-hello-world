FROM ubuntu:latest
RUN useradd -m -p Nopassword javauser
USER javauser

FROM maven:3.6.0-jdk-11-slim AS build
WORKDIR /home/app
COPY src /home/app/src
COPY ./my-app/pom.xml /home/app
RUN mvn -B package --file ./my-app/pom.xml

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /target/my-app-1.0.0-SNAPSHOT.jar /app.jar
CMD ["/usr/bin/java", "-jar", "/app.jar"]
