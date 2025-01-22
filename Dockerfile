FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY .mvn/ .mvn

COPY mvnw pom.xml ./

COPY src ./src

RUN mvn install

CMD ["mvn", "spring-boot:run"]