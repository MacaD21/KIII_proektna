# Use an official OpenJDK runtime as a base image
FROM openjdk:19-ea-jdk-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the JAR file into the container at /usr/src/app
COPY target/lab-0.0.1-SNAPSHOT.jar .

# Expose the port your app runs on
EXPOSE 8080

# Specify the command to run on container start
CMD ["java", "-jar", "lab-0.0.1-SNAPSHOT.jar"]
