FROM maven:3.8.6-openjdk-11 as builder
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:11
COPY --from=builder /app/target/myapp.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
