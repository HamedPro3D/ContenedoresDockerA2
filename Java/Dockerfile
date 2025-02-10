# Usa una imagen base con JDK
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo solve.java al contenedor
COPY solve.java .

# Compila el archivo Java
RUN javac solve.java

# Ejecuta el programa Java
CMD ["java", "solve"]
