# Need Java 8 installed
FROM openjdk:8

# Project should open in 8080
EXPOSE 8080

# Convention
WORKDIR /usr/src/app

COPY ./spring-example-project .

# Build project
RUN ./mvnw package

# Run 
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]