# Usamos una imagen base de Ubuntu
FROM ubuntu:20.04

# Instalamos las dependencias necesarias
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Agregar un directorio de trabajo dentro del contenedor
WORKDIR /app

# Clonar tu repositorio de GitHub (cambia esta URL por la de tu repositorio)
RUN git clone https://github.com/HamedPro3D/ContenedoresDockerA2.git

# Establecer el directorio donde se clonó el repositorio como trabajo
WORKDIR /app/ContenedoresDockerA2

# Si es necesario, puedes construir o ejecutar un script dentro del repositorio
# CMD ["comando", "para", "ejecutar"]

# Exponer el puerto si es necesario (por ejemplo, para una aplicación web)
# EXPOSE 8080
