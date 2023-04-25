FROM eclipse-temurin:19.0.2_7-jre-alpine as builder 
WORKDIR /extracted
ADD target/*.jar app.jar
RUN java -Djarmode=layertools -jar app.jar extract 

FROM eclipse-temurin:19.0.2_7-jre-alpine
WORKDIR /app

COPY --from=builder /extracted/dependencies/ ./
COPY --from=builder /extracted/spring-boot-loader/ ./
COPY --from=builder /extracted/snapshot-dependencies/ ./
COPY --from=builder /extracted/application/ ./

EXPOSE 8080

ENTRYPOINT [ "java", "org.springframework.boot.loader.JarLauncher" ]