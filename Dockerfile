# Start with a lightweight Java runtime
FROM openjdk:8-jdk-slim

# Copy necessary files (Tomcat runner and app) into the container
COPY target/dependency/webapp-runner.jar /app/
COPY target/onlinebookstore.war /app/

# Open port 8080 for the app
EXPOSE 8080

# Start the app using Java
CMD ["java", "-jar", "/app/webapp-runner.jar", "--port", "8080", "/app/onlinebookstore.war"]

