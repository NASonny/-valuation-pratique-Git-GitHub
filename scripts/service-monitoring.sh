
#!/bin/bash

# ==========================================
# Script : process-monitor.sh
# Description : Surveillance des processus Linux
# ==========================================

REPORT_DIR="./reports"
mkdir -p "$REPORT_DIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT_FILE="$REPORT_DIR/rapport_processus_$DATE.txt"

# Récupération des processus
PROCESSES=$(ps -eo pid,user,stat,%cpu,%mem,comm --no-headers)

# Statistiques
TOTAL=$(ps -e --no-headers | wc -l)
RUNNING=$(ps -e -o stat= | grep -c '^R')
SLEEPING=$(ps -e -o stat= | grep -c '^S')
STOPPED=$(ps -e -o stat= | grep -c '^T')
ZOMBIE=$(ps -e -o stat= | grep -c '^Z')

# En-tête
{
    echo "=========================================="
    echo "       RAPPORT DE SURVEILLANCE"
    echo "=========================================="
    echo "Date : $(date)"
    echo "Machine : $(hostname)"
    echo "Utilisateur : $(whoami)"
    echo "=========================================="

    echo ""
    echo "STATISTIQUES GLOBALES"
    echo "------------------------------------------"
    echo "Nombre total de processus : $TOTAL"
    echo "Processus en cours (R) : $RUNNING"
    echo "Processus en veille (S) : $SLEEPING"
    echo "Processus arrêtés (T) : $STOPPED"
    echo "Processus zombies (Z) : $ZOMBIE"

    echo ""
    echo "LISTE DES PROCESSUS"
    echo "------------------------------------------"
    printf "%-8s %-15s %-6s %-8s %-8s %s\n" \
        "PID" "USER" "STAT" "CPU%" "MEM%" "COMMANDE"

    echo "$PROCESSES"

    echo ""
    echo "TOP 10 - CONSOMMATION CPU"
    echo "------------------------------------------"
    ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 11

    echo ""
    echo "TOP 10 - CONSOMMATION MEMOIRE"
    echo "------------------------------------------"
    ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -n 11

    echo ""
    echo "=========================================="
    echo "FIN DU RAPPORT"
    echo "=========================================="

} | tee "$REPORT_FILE"

echo ""
echo "Rapport sauvegardé dans : $REPORT_FILE"
