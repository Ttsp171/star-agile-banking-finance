# Use a base image with OpenJDK
FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the .jar file from the target folder in your workspace to the app directory in the container
COPY target/banking-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
