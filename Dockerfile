# Tag en LTS: Long term support, version stable et maintenues par les devs
FROM node:lts

# Copie du package.json pour les dépendances et les scripts
COPY package*.json .

# Installation des dépendances
RUN npm install

# Copie des fichiers du projet
COPY . .

# Ouverture de port pour l'app
EXPOSE 3000

# Lancement du serveur
CMD ["npm", "start"]
