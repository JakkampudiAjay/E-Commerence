# Use Java 17 (recommended for Spring Boot 3)
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Maven build output
COPY target/*.jar app.jar

# Expose port Render uses
EXPOSE 8080

# Run the app
ENTRYPOINT ["java","-jar","app.jar"]
