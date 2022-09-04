FROM ubuntu:latest
RUN useradd -m -p Nopassword javauser
RUN chmod javauser +x /usr/bin/java
USER javauser

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY /target/my-app-1.0.0-SNAPSHOT.jar /app.jar
CMD ["/usr/bin/java", "-jar", "/app.jar"]
