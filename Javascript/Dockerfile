# Usa la imagen oficial de Node.js
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY package*.json ./
RUN npm install

# Copia todo el código fuente
COPY . .

# Comando por defecto para ejecutar el script
CMD ["node", "solve.js"]
