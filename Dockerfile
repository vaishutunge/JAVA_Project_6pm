FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the built artifact from the build stage
COPY target/mahaLogin-5.0.war /app/mahaLogin-5.0.war

# Expose the port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "/app/mahaLogin-5.0.war"]
