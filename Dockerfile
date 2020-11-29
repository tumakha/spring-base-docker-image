FROM adoptopenjdk/openjdk15:alpine-jre
RUN apk update && apk add --no-cache curl && addgroup -S spring && adduser -S spring -G spring
USER spring:spring

HEALTHCHECK --timeout=5s CMD curl -f http://localhost:${SERVER_PORT}/actuator/health || exit 1
ENTRYPOINT ["java","-jar","/app.jar"]
