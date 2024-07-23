#!/bin/bash

echo "Start postCreateCommand.sh script."

# Avvia i servizi Docker Compose in background
if ! docker-compose up -d; then
    echo "Errore durante l'avvio di Docker Compose. Controllare i log per maggiori dettagli."
    docker-compose logs  # Mostra i log in caso di errore
    exit 1  # Esci con un codice di errore
fi

# Verifica lo stato dei container
echo "Verifica dello stato dei container..."
docker-compose ps

# Esegui altri comandi post-creazione (opzionale)
# ...
