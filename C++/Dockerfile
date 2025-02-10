# Usamos una imagen base con soporte para C++
FROM gcc:latest

# Instalamos Git para poder hacer el push
RUN apt-get update && apt-get install -y git

# Creamos un directorio para el proyecto
WORKDIR /app

# Copiamos el archivo C++ (suponiendo que el archivo se llama main.cpp)
COPY solve.cpp /app

# Compilamos el programa C++
RUN g++ -o mi_programa solve.cpp

# Establecemos el comando por defecto para ejecutar el programa
CMD ["./mi_programa"]
