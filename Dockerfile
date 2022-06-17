FROM openjdk:11
VOLUME /tmp
EXPOSE 8989
ADD target/JenkinApplication-1.0.jar JenkinApplication-1.0.jar
ENTRYPOINT ["java","-jar","/DockerTestApplication-1.0.jar"]
