# Usar una imagen base de Node.js
FROM node:16

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Exponer el puerto 3000
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "app.js"]