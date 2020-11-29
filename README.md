# Base Docker image for Spring Boot services

### Build Docker image

    docker build -t tumakha/spring-base .

### Extending some service image from tumakha/spring-base:latest
```dockerfile
FROM tumakha/spring-base
ENV SERVER_PORT=8080
COPY target/*.jar /app.jar
```
