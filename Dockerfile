# On utilise une version stable et légère de Node.js
FROM node:18-slim

# On définit le dossier de travail dans le conteneur
WORKDIR /app

# On copie les fichiers de configuration pour installer les dépendances
COPY package*.json ./

# On installe les dépendances du projet
RUN npm install

# On copie le reste des fichiers du projet
COPY . .

# Commande pour lancer votre bot
CMD ["node", "index.js"]
