# Base Docker image for Spring Boot services

https://hub.docker.com/r/tumakha/spring-base

### Build Docker image

    docker build -t tumakha/spring-base .

### Extending some service image from tumakha/spring-base:latest
```dockerfile
FROM tumakha/spring-base
ENV SERVER_PORT=8888
COPY target/*.jar /app.jar
```
