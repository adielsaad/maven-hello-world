FROM openjdk:8-jre-alpine
COPY ./my-app/target/my-app-1.0.0-SNAPSHOT.jar /app.jar
