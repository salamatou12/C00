#!/bin/bash

# Vérifie si un argument (nom de fichier) a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <nom_du_fichier>"
    exit 1
fi

fichier="$1"

# Vérifie l'existence du fichier
if [ -e "$fichier" ]; then
    echo "Le fichier '$fichier' existe."
    
    # Optionnel: vérification du type de fichier
    if [ -f "$fichier" ]; then
        echo "C'est un fichier régulier."
    elif [ -d "$fichier" ]; then
        echo "C'est un répertoire."
    else
        echo "C'est un autre type de fichier."
    fi
else
    echo "Le fichier '$fichier' n'existe pas."
    exit 2
fi

exit 0