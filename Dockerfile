# Use Java 21 base image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy the JAR file
COPY app/build/libs/*.jar app.jar

# Expose application port
EXPOSE 80

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]