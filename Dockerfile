FROM java:8-alpine
ARG JAR_FILE=TEST-MAVEN-PROJECT/target/yuyin-1.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENV LANG C.UTF-8
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/app.jar"]
