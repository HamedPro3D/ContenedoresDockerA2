# Usamos una imagen base con Python 3
FROM python:3.9-slim

# Instalamos Git y otras dependencias necesarias
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Establecemos un directorio de trabajo en el contenedor
WORKDIR /app

# Instalamos las dependencias de Python (si las tienes en requirements.txt)
# Si no tienes un archivo requirements.txt, puedes crear el script de Python más tarde.
# COPY requirements.txt .
# RUN pip install -r requirements.txt

# Copiamos el código del repositorio dentro del contenedor
# (este paso lo haremos más tarde si ya tienes un repositorio clonado)
COPY . /app

# Establecer el comando que el contenedor ejecutará al arrancar
CMD ["python", "solve.py"]
