FROM eclipse-temurin:24-jdk-alpine
VOLUME /tmp

ENV PORT 8761
EXPOSE 8761

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} service-registry.jar

ENTRYPOINT ["java","-jar","/service-registry.jar"]