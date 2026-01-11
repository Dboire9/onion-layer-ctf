#!/bin/bash

echo "🔄 Reset complet du lab..."
echo "⚠️  ATTENTION: Toute votre progression sera perdue!"
echo ""
read -p "Êtes-vous sûr? (y/N) " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🗑️  Suppression des containers..."
    docker rm -f onion-layer-target onion-db 2>/dev/null
    
    echo "🌐 Nettoyage du réseau..."
    docker network rm pentest-network 2>/dev/null
    
    echo "✅ Lab réinitialisé!"
    echo "💡 Relancez avec: ./start-lab.sh"
else
    echo "❌ Reset annulé"
fi
