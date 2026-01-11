#!/bin/bash

echo "🛑 Arrêt du Onion-Layer Lab..."
echo ""

docker stop onion-layer-target onion-db 2>/dev/null

echo "✅ Lab arrêté"
echo "💡 Pour redémarrer: ./start-lab.sh"
echo "💡 Pour reset complet: ./reset-lab.sh"
