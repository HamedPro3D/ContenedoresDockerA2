# Usa la imagen oficial de Rust
FROM rust:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto
COPY Cargo.toml Cargo.lock ./
COPY src ./src

# Construir el programa en modo release
RUN cargo build --release

# Copiar el binario compilado
RUN cp target/release/mi-proyecto-rust /usr/local/bin/solve

# Comando predeterminado para ejecutar el programa
CMD ["solve"]
