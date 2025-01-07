# Use an official OpenJDK runtime as the base image
FROM openjdk:8-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built WAR file and the webapp-runner.jar to the container
# Assuming Maven has been run locally to generate these artifacts
COPY target/onlinebookstore.war /app/onlinebookstore.war
COPY target/dependency/webapp-runner.jar /app/webapp-runner.jar

# Expose the default Tomcat HTTP port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "webapp-runner.jar", "--port", "8080", "onlinebookstore.war"]
