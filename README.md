# 🧅 Onion-Layer CTF - Pentest Training Lab

![Status](https://img.shields.io/badge/status-ready-green)
![Docker](https://img.shields.io/badge/docker-required-blue)
![Difficulty](https://img.shields.io/badge/difficulty-beginner--intermediate-orange)

## 📖 Description

**Onion-Layer CTF** est un laboratoire de formation au pentest structuré sur 5 jours progressifs. Chaque "couche" représente une étape de la méthodologie d'attaque basée sur le framework **MITRE ATT&CK** et la **Cyber Kill Chain**.

### 🎯 Objectifs Pédagogiques
- Maîtriser les techniques de reconnaissance et énumération
- Exploiter des vulnérabilités web (SQLi, LFI, RCE)
- Effectuer des mouvements latéraux post-exploitation
- Auditer du code pour identifier des failles
- Réaliser une escalade de privilèges jusqu'à root

---

## 🚀 Installation Rapide

### Prérequis
- **Docker** installé ([Installation](https://docs.docker.com/get-docker/))
- **4 GB RAM** minimum
- **10 GB** d'espace disque libre

### Démarrage

```bash
# 1. Cloner le dépôt
git clone https://github.com/Dboire9/onion-layer-ctf.git
cd onion-layer-ctf

# 2. Télécharger l'image Docker depuis les Releases
# https://github.com/Dboire9/onion-layer-ctf/releases/latest
# Placer onion-layer-target.tar.gz dans ce dossier

# 3. Lancer le lab
./start-lab.sh

# 3. Commencer le Jour 1
cat student-workbook.md
```

### Gestion du Lab

```bash
# Arrêter le lab (garde la progression)
./stop-lab.sh

# Redémarrer
./start-lab.sh

# Reset complet (recommencer à zéro)
./reset-lab.sh
```

---

## 📚 Structure du Challenge (5 Jours)

| Jour | Thème | Compétences |
|------|-------|-------------|
| **1** | 🔍 Reconnaissance | nmap, dirb, énumération |
| **2** | 🌐 Exploitation Web | SQLi, LFI, RCE, Web Shell |
| **3** | 🔑 Post-Exploitation | SSH, Lateral Movement, Sudo |
| **4** | 🐍 Audit de Code | Python, Command Injection |
| **5** | 👑 Privilege Escalation | SUID, PATH Hijacking, Root |

**6 flags** à récupérer au total!

---

## 🎯 Services Disponibles

| Service | Port | URL/Commande |
|---------|------|--------------|
| Web Server | 8080 | http://localhost:8080 |
| SSH | 2222 | `ssh user@localhost -p 2222` |
| FTP | 2121 | `ftp localhost 2121` |
| Python Service | 8888 | http://localhost:8888 (interne) |

---

## 📝 Documentation

- **README.md** - Ce fichier
- **student-workbook.md** - Instructions détaillées des 5 jours
- **wordlists/** - Wordlists pour le fuzzing web

---

## 🛠️ Outils Recommandés

### Reconnaissance
- `nmap` - Scan de ports
- `dirb` / `gobuster` - Énumération web
- `curl` - Tests HTTP

### Exploitation
- `sqlmap` - SQL Injection
- `netcat` - Reverse shells
- `python` / `php` - Web shells

### Post-Exploitation
- `ssh` - Connexion distante
- `sudo -l` - Énumération de privilèges
- `find` - Recherche de binaires SUID

---

## 🏆 Flags

Il y a **6 flags** cachés dans le système:
- `FLAG_DAY1` - Reconnaissance complète
- `FLAG_DAY2` - Accès initial obtenu
- `FLAG_DAY3_PART1` - Connexion SSH
- `FLAG_DAY3_PART2` - Mouvement latéral
- `FLAG_DAY4` - Service interne exploité
- `FLAG_DAY5` - Accès root

---

## 📊 Rapport Final

À la fin des 5 jours, vous devez produire un **rapport de pentest professionnel** incluant:
- Executive Summary
- Méthodologie (MITRE ATT&CK)
- Détail technique de chaque vulnérabilité avec Proof of Concept
- Recommandations de remédiation
- Screenshots et preuves

---

## 🆘 Support

### Problèmes Courants

**Docker ne démarre pas (WSL/Linux)**
```bash
sudo service docker start
```

**Ports déjà utilisés**
```bash
# Trouver le processus
sudo lsof -i :8080

# Arrêter le processus ou modifier les ports dans start-lab.sh
```

**Les containers ne démarrent pas**
```bash
# Vérifier les logs
docker logs onion-layer-target

# Reset complet
./reset-lab.sh
```

---

## ⚠️ Avertissement

Ce laboratoire contient des **vulnérabilités intentionnelles** à des fins pédagogiques uniquement.

**Ne jamais utiliser ces techniques sur des systèmes sans autorisation explicite.**

L'utilisation non autorisée de ces compétences peut être illégale et entraîner des poursuites judiciaires.

---

## 📜 License

Ce projet est sous licence MIT - Formation pédagogique uniquement.

---

## 🎓 Auteur

**Onion-Layer CTF Training Lab**  
Framework: MITRE ATT&CK + Cyber Kill Chain  
Version: 1.0  
Date: Janvier 2026

---

## 🌟 Bon Pentest!

Besoin d'aide? Consultez le `student-workbook.md` pour les instructions détaillées de chaque jour.
