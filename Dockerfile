FROM openjdk:8-jdk-alpine
LABEL version="20w22a"
RUN apk add --no-cache wget
RUN echo "eula=true" >> eula.txt
RUN wget https://gist.githubusercontent.com/4669842/e25cd0c57d0e5b31874423622e3f8be9/raw/a767931c385a877ac67c490b911f54b5a15741b6/server.properties
RUN wget https://launcher.mojang.com/v1/objects/c4a62eb36917aaa06dc8e20a2a35264d5fda123b/server.jar
EXPOSE 25565/tcp
EXPOSE 25565/udp
VOLUME ["/data"]
ENTRYPOINT ["java","-jar","/server.jar"]
