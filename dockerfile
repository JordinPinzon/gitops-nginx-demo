# Usa una imagen base de NGINX
FROM nginx:latest

# Copia el archivo HTML al directorio de NGINX
COPY index.html /usr/share/nginx/html/index.html

# Expone el puerto 80
EXPOSE 80
