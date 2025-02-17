FROM openjdk:17-jdk-slim

WORKDIR /app

COPY solve.java .

RUN javac solve.java

CMD ["java", "solve"]
