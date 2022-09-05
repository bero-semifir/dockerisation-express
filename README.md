# Dockeriser une application Express

## ❓ Questions à se poser

- Quel est le type d'application? -> NodeJS
- Comment installer les dépendances? -> `npm install`
- Comment lancer le projet ? -> `npm start`
- De quels fichiers ai-je besoin?:
  - package.json pour les dépendances et les scripts
  - les fichiers du projet
- Quels ports exposer? -> 3000 pour express

## 🦾 Construire le Dockerfile

```Dockerfile
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

```

## Construire l'image

`docker build -t demo-express`

## Lancer l'app

`docker run -p 3000:3000 demo-express`
