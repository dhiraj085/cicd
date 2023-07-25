FROM openjdk:17-oracle
EXPOSE 8080
COPY demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java", "-jar", "/demo.jar"]