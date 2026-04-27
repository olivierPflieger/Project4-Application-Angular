# Étape 1 : build Angular
FROM node:20-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Étape 2 : Nginx
FROM nginx:alpine

# Permet à Nginx d'écouter sur le port 80 sans nécessiter les privilèges root
RUN apk add --no-cache libcap && setcap 'cap_net_bind_service=+ep' /usr/sbin/nginx

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY --from=build /app/dist/olympic-games-starter/browser /app

# Assigne les permissions pour le user nginx
RUN chown -R nginx:nginx /app /tmp /var/log/nginx /var/cache/nginx

# Utilise le user nginx pour exécuter le serveur
USER nginx

EXPOSE 80

# Démarre Nginx en mode non-daemon
CMD ["nginx", "-g", "daemon off;"]