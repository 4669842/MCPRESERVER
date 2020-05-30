FROM openjdk:8-jdk-alpine
RUN apk add --no-cache wget
RUN echo "eula=true" >> eula.txt
RUN wget https://launcher.mojang.com/v1/objects/c4a62eb36917aaa06dc8e20a2a35264d5fda123b/server.jar
ENTRYPOINT ["java","-jar","/server.jar"]
