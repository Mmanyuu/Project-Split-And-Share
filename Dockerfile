<<<<<<< HEAD
FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src
RUN ./mvnw install -DskipTests
CMD ["./mvnw", "spring-boot:run"]
=======
#Use Eclipse Temurin JDK for Java 17

FROM eclipse-temurin:17-jdk-jammy

#set the working dir

WORKDIR /app

#Copy the Maven wrapper and POM files

COPY .mvn/ .mvn

COPY mvnw pom.xml ./

#Download the dependencies

RUN ./mvnw dependency:resolve

#Copy application source code

COPY src ./src

#Build the application and run tests

RUN ./mvnw package -DskipTests

#Default command to start the Spring Boot Application

CMD ["./mvnw","spring-boot:run"]
>>>>>>> 081c5cfa0654dfca65ba31d43b2eb6a236b7aaeb
