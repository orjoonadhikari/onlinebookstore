# Use an OpenJDK image based on Alpine for a lightweight container
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory inside the container
WORKDIR /opt/app

# Copy the .jar file from the build context to the container
COPY target/*.jar /opt/app/app.jar

# Set the default command to run the application
ENTRYPOINT ["java", "-jar", "/opt/app/app.jar"]

