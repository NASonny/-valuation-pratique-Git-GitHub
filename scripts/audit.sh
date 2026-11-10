#!/bin/bash
set -euo pipefail

echo "====================================="
echo "    AUDIT DES UTILISATEURS LOCAUX"
echo "====================================="

# Vérification du fichier
if [[ ! -r /etc/passwd ]]; then
    echo "Erreur : impossible de lire /etc/passwd"
    exit 1
fi

total=0

# Lecture des comptes utilisateurs
while IFS=: read -r user password uid gid info home shell
do
    # Ignorer les commentaires et lignes vides
    [[ -z "$user" || "$user" == \#* ]] && continue

    total=$((total + 1))

    echo "Nom utilisateur : $user"
    echo "UID             : $uid"
    echo "GID             : $gid"
    echo "Dossier         : $home"
    echo "Shell           : $shell"
    echo "-------------------------------------"

done < /etc/passwd

echo "Nombre total de comptes : $total"
echo "===== FIN DE L'AUDIT ====="