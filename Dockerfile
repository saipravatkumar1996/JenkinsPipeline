FROM openjdk:11
#VOLUME /tmp
ARG APP_NAME="JenkinApplication"
ARG APP_VERSION="1.1"
ARG JAR_FILE="/target/${APP_NAME}-${APP_VERSION}.jar"
COPY ${JAR_FILE} app-01.jar
EXPOSE 8989
#ADD target/JenkinApplication-1.0.jar JenkinApplication-1.0.jar
ENTRYPOINT ["java","-jar","app-01.jar"]
