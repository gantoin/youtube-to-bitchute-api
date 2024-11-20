FROM openjdk:11.0.16-jre-slim
COPY target/bitchute-uploader-api-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
RUN sh -c 'touch bitchute-uploader-api-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-jar","bitchute-uploader-api-0.0.1-SNAPSHOT.jar"]
