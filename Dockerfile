FROM openjdk:8-jdk-alpine
LABEL maintainer="azatm@gmail.com"
COPY . /myapp
WORKDIR  /myapp
RUN ./mvnw package && mv target/*.jar target/app.jar
EXPOSE 8080
CMD [ "java", "-jar" , "target/app.jar"]

