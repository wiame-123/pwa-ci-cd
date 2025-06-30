# Utiliser une image node officielle
FROM node:18-alpine

# Dossier de travail
WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste
COPY . .

# Exposer le port 
EXPOSE 3000

# Commande pour lancer l'application
CMD ["npx", "serve", ".","-l","3000"]
