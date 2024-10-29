# Stage 1: Build the application
FROM maven:3.8.6-openjdk-11 as builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2: Create the final image
FROM openjdk:11
COPY --from=builder /app/target/*.jar app.jar  # Use wildcard here
ENTRYPOINT ["java", "-jar", "/app.jar"]
