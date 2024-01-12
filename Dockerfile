FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/eureka-server-docker.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 8761