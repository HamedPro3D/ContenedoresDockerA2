
FROM ubuntu:20.04


RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /app


RUN git clone https://github.com/HamedPro3D/ContenedoresDockerA2.git


WORKDIR /app/ContenedoresDockerA2
