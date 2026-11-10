#!/bin/bash

echo "=== LANCEMENT DES SCRIPTS ==="
echo "Demarrage de la surveillance"
bash scripts/surveillance.sh
echo "$(date): Surveillance executee" >> surveillance.log
echo "Fin du programme"