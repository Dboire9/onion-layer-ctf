#!/bin/bash

echo "🧅 Onion-Layer Pentest Lab - Installation"
echo "=========================================="
echo ""

# Vérifier Docker
if ! command -v docker &> /dev/null; then
    echo "❌ Docker n'est pas installé!"
    echo "📥 Installation: https://docs.docker.com/get-docker/"
    exit 1
fi

echo "✅ Docker installé: $(docker --version)"

# Vérifier Docker Compose
if ! docker compose version &> /dev/null && ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose n'est pas installé!"
    echo "📥 Installation: https://docs.docker.com/compose/install/"
    exit 1
fi

echo ""

# Charger l'image Docker
if [ ! -f "onion-layer-target.tar.gz" ]; then
    echo "❌ Fichier onion-layer-target.tar.gz introuvable!"
    exit 1
fi

echo "📦 Chargement de l'image Docker..."
docker load < onion-layer-target.tar.gz

# Créer le réseau
echo "🌐 Création du réseau..."
docker network create pentest-network 2>/dev/null || true

# Démarrer la base de données
echo "🗄️  Démarrage de la base de données..."
docker run -d \
  --name onion-db \
  --network pentest-network \
  -e MYSQL_ROOT_PASSWORD=sup3rs3cr3t \
  -e MYSQL_DATABASE=webapp \
  -e MYSQL_USER=webuser \
  -e MYSQL_PASSWORD=webpass123 \
  mysql:8.0 \
  2>/dev/null || docker start onion-db

sleep 3

# Démarrer le container cible
echo "🎯 Démarrage du container cible..."
docker run -d \
  --name onion-layer-target \
  --hostname target-server \
  --network pentest-network \
  -p 8080:80 \
  -p 2121:21 \
  -p 21100-21110:21100-21110 \
  -p 2222:22 \
  -p 8888:8888 \
  -e MYSQL_ROOT_PASSWORD=sup3rs3cr3t \
  -e FLAG_DAY1=FLAG{reconnaissance_master_2026} \
  -e FLAG_DAY2=FLAG{web_shell_deployed_successfully} \
  -e FLAG_DAY3_PART1=FLAG{developer_access_confirmed} \
  -e FLAG_DAY3_PART2=FLAG{lateral_movement_achieved} \
  -e FLAG_DAY4=FLAG{code_auditor_supreme} \
  -e FLAG_DAY5=FLAG{root_access_granted_gg} \
  --cap-add NET_ADMIN \
  pentest-target:latest \
  2>/dev/null || docker start onion-layer-target

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Lab démarré avec succès!"
    echo ""
    echo "📍 Services disponibles:"
    echo "   - Web:    http://localhost:8080"
    echo "   - SSH:    ssh user@localhost -p 2222"
    echo "   - FTP:    ftp://localhost:2121"
    echo ""
    echo "📚 Consultez le fichier README.md pour commencer"
    echo "🎯 Bon pentest!"
else
    echo ""
    echo "❌ Erreur lors du démarrage"
    echo "📋 Consultez les logs: docker compose logs"
fi
