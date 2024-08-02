FROM openjdk:11-jre-slim
ADD target/TO-DO-List-0.0.1-SNAPSHOT.jar springbootApp.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "springbootApp.jar"]
