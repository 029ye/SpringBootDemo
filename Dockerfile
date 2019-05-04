FROM hub.c.163.com/housan993/centos7_jdk8:latest
ARG app
ADD $app app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
