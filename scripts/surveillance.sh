#!/bin/bash

# Fonctionnalite A - Surveillance systeme
# Affichage des ressources CPU, RAM et disques

set -e

echo "=================================="
echo "      SURVEILLANCE SYSTEME"
echo "=================================="

echo ""
echo "=== INFORMATIONS SYSTEME ==="
echo "Machine : $(hostname)"
echo "Date    : $(date '+%d/%m/%Y %H:%M:%S')"

echo ""
echo "=== PROCESSEUR ==="
echo "Charge moyenne (1, 5, 15 min) :"
uptime

echo ""
echo "=== MEMOIRE RAM ==="
free -h

echo ""
echo "=== ESPACE DISQUE ==="
df -h -x tmpfs -x devtmpfs

echo ""
echo "=================================="
echo "     FIN DE LA SURVEILLANCE"
echo "=================================="
