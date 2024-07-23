# Usa l'ultima versione di Node.js Long Term Support (LTS)
FROM node:lts

# Crea una directory di lavoro per Node-RED
WORKDIR /usr/src/node-red

# Installa Node-RED globalmente
RUN npm install -g --unsafe-perm node-red

# Copia i dati di Node-RED (flussi, impostazioni, ecc.) nel container
COPY ../services/node-red/data /data

# Imposta l'utente node-red per motivi di sicurezza
USER node-red

# Esponi la porta 1880 (usata di default da Node-RED)
EXPOSE 1880

# Comando di avvio di Node-RED
CMD ["node-red", "-u", "/data"]
