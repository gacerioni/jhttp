FROM openjdk:8-jre-alpine3.9
LABEL maintainer="Gabriel Cerioni <gacerioni@gmail.com>"

WORKDIR /

# Copy the already build jar to the image
COPY ./target/*.jar /app.jar

# Expose default port for external communication
EXPOSE 8888 8080

# Command to run the executable
CMD ["java", "-jar", "/app.jar"]
