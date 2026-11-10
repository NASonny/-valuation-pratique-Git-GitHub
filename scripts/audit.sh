#!/bin/bash
set -euo pipefail

echo "====================================="
echo "    AUDIT DES UTILISATEURS LOCAUX"
echo "====================================="

# Vérification du fichier des utilisateurs
if [[ ! -r /etc/passwd ]]; then
    echo "Erreur : impossible de lire /etc/passwd"
    exit 1
fi

# Lecture des comptes utilisateurs Linux
while IFS=: read -r user password uid gid info home shell
do
    echo "Nom utilisateur : $user"
    echo "UID             : $uid"
    echo "GID             : $gid"
    echo "Dossier         : $home"
    echo "Shell           : $shell"
    echo "-------------------------------------"

done < /etc/passwd

echo "===== FIN DE L'AUDIT ====="