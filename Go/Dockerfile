# Usar la imagen oficial de Go
FROM golang:1.20

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto
COPY . .

# Descargar las dependencias
RUN go mod tidy

# Construir el ejecutable con el nombre "solve"
RUN go build -o solve solve.go

# Comando por defecto para ejecutar el programa
CMD ["./solve"]
