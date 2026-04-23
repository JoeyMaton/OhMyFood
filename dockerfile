FROM nginx:alpine

# Supprime le contenu par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie tout mon projet dans nginx
COPY . /usr/share/nginx/html

# Expose le port 80
EXPOSE 80

# Lance nginx
CMD ["nginx", "-g", "daemon off;"]