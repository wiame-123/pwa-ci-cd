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

# Exposer le port (serve sert sur 5000 par défaut)
EXPOSE 5000

# Commande pour lancer l'application
CMD ["npx", "serve", "."]
