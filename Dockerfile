# Use an OpenJDK image as the base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the target folder into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Expose the port you want the container to listen on
EXPOSE 8089

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/demo.jar"]
