#!/bin/bash

# Imposta il working directory alla root del progetto
#cd /workspaces/${localWorkspaceFolderBasename}

# Avvia i servizi Docker Compose in background
docker-compose up -d

# Verifica lo stato dei container
echo "Verifica dello stato dei container..."
docker-compose ps

# Controlla i log dei container per eventuali errori
echo "Controllo dei log dei container..."
docker-compose logs

# Esegui altri comandi post-creazione (opzionale)
# Ad esempio, puoi installare dipendenze aggiuntive o eseguire script di inizializzazione
