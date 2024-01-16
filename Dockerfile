FROM eclipse-temurin:19-alpine
VOLUME /tmp
EXPOSE 8080
WORKDIR /backend
ARG JAR_FILE=./target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} detyra.jar
ENTRYPOINT ["java","-jar","detyra.jar"]