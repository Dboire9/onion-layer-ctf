# 📓 Cahier de Travail Élève - Formation Onion-Layer

## 👤 Informations Personnelles

**Nom** : ___________________________  
**Date de Formation** : ___________________________  
**Formateur** : ___________________________

---

## 🎯 Objectif de la Formation

Compromettre progressivement un serveur Linux protégé par des couches de sécurité successives, de la reconnaissance initiale jusqu'au privilège Root.

---

## 📋 Méthodologie : MITRE ATT&CK & Cyber Kill Chain

### Frameworks de Référence

```
Cyber Kill Chain (Lockheed Martin)
1. Reconnaissance        → Jour 1
2. Weaponization         → Jour 2
3. Delivery              → Jour 2
4. Exploitation          → Jour 3-4
5. Installation          → Jour 3
6. Command & Control     → Jour 3-4
7. Actions on Objectives → Jour 5
```

**MITRE ATT&CK** : https://attack.mitre.org/

---

## 📅 JOUR 1 : Reconnaissance

### 🎯 Objectif
Identifier la surface d'attaque du serveur cible sans déclencher d'alertes.

### 📝 Notes de Théorie

**Phase Kill Chain** : Reconnaissance (TA0043)

**Outils Utilisés** :
- Nmap : _________________________________________________
- Gobuster : _____________________________________________
- Curl : _________________________________________________

### 🛠️ TP - Vos Découvertes

#### 1. Scan de Ports (Nmap)

**Commande utilisée** :
```bash
_________________________________________________________________
```

**Ports ouverts identifiés** :
| Port | Service | Version |
|------|---------|---------|
|      |         |         |
|      |         |         |
|      |         |         |

#### 2. Énumération Web

**Commande de fuzzing** :
```bash
_________________________________________________________________
```

**Répertoires découverts** :
- _________________________________________________________________
- _________________________________________________________________
- _________________________________________________________________

#### 3. Fichiers Intéressants

**robots.txt contient** :
```
_________________________________________________________________
_________________________________________________________________
```

**Fichiers de backup trouvés** :
- _________________________________________________________________
- _________________________________________________________________

### 🚩 Flag Jour 1

**Localisation** : _____________________________________________

**Flag** : `FLAG{_____________________________________________}`

### 🐇 Rabbit Holes Identifiés (si il y a)

**Fausse(s) piste(s)** : _____________________________________________

**Leçon(s) apprise(s)** : _____________________________________________

### 📊 Synthèse des Points d'Entrée Potentiels

1. _________________________________________________________________
2. _________________________________________________________________
3. _________________________________________________________________

---

## 📅 JOUR 2 : Exploitation Web

### 🎯 Objectif
Obtenir un accès initial au serveur (shell www-data).

### 📝 Notes de Théorie

**Phase Kill Chain** : Weaponization / Delivery

**Vulnérabilités Ciblées** :
- SQL Injection : _____________________________________________
- LFI : _______________________________________________________
- File Upload : _______________________________________________

### 🛠️ TP - Exploitation

#### 1. SQL Injection

**URL cible** : _________________________________________________

**Payload utilisé** :
```
Username: _______________________________________________________
Password: _______________________________________________________
```

**Résultat** : ☐ Bypass réussi  ☐ Échec

#### 2. Local File Inclusion (LFI)

**URL vulnérable** : _____________________________________________

**Fichier extrait** : /etc/passwd

**Contenu intéressant** :
```
_________________________________________________________________
_________________________________________________________________
```

**Credentials trouvés** :
- Fichier : __________________________________________________
- Username : _________________________________________________
- Password : _________________________________________________

#### 3. Upload de Web Shell

**Technique de bypass** : _______________________________________

**Nom du fichier uploadé** : _____________________________________

**Commande de test** :
```bash
_________________________________________________________________
```

**Output** : ____________________________________________________

#### 4. Reverse Shell

**Listener setup** :
```bash
_________________________________________________________________
```

**Payload envoyé** :
```bash
_________________________________________________________________
_________________________________________________________________
```

**Shell obtenu ?** : ☐ Oui  ☐ Non

**Utilisateur actuel** : ________________________________________

### 🚩 Flag Jour 2

**Localisation** : _____________________________________________

**Flag** : `FLAG{_____________________________________________}`

### 🛡️ Remédiation Proposée

**Vulnérabilité SQLi** :
```php
// Code sécurisé :
_________________________________________________________________
_________________________________________________________________
```

---

## 📅 JOUR 3 : Post-Exploitation & Pivot

### 🎯 Objectif
Stabiliser l'accès et pivoter vers un compte utilisateur standard.

### 📝 Notes de Théorie

**Phase Kill Chain** : Installation / Lateral Movement

**Techniques** :
- Credential Extraction : _____________________________________
- Password Cracking : _________________________________________
- Sudo Exploitation : _________________________________________

### 🛠️ TP - Pivot Local

#### 1. Énumération du Système

**Utilisateurs identifiés** :
```
_________________________________________________________________
_________________________________________________________________
```

#### 2. Recherche de Credentials

**Fichiers de configuration trouvés** :
- _________________________________________________________________

**Credentials extraits** :
```
Username: _______________________________________________________
Password: _______________________________________________________
```

#### 3. Connexion SSH

**Commande SSH** :
```bash
_________________________________________________________________
```

**Connexion réussie ?** : ☐ Oui  ☐ Non

**UID actuel** : ________________________________________________

#### 4. Privilèges Sudo

**Commande** :
```bash
sudo -l
```

**Output** :
```
_________________________________________________________________
_________________________________________________________________
```

**Binaire exploitable identifié** : _____________________________

**Utilisateur cible** : _________________________________________

#### 5. Pivot vers Backupuser

**Technique d'exploitation** : __________________________________

**Commandes d'exploitation sudo** :
```bash
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
```

**Utilisateur obtenu** : ________________________________________

**Vérification** :
```bash
whoami
id
```

### 🚩 Flags Jour 3

**Flag Part 1 (Developer)** : `FLAG{_____________________________________}`

**Localisation** : _____________________________________________

**Flag Part 2 (Backupuser)** : `FLAG{________________________________________}`

**Localisation** : _____________________________________________

### 🔧 Outils de Cracking (Optionnel)

**John the Ripper** :
```bash
_________________________________________________________________
```

**Temps de cracking estimé** : __________________________________

---

## 📅 JOUR 4 : Audit de Code

### 🎯 Objectif
Identifier et exploiter une vulnérabilité dans un service interne.

### 📝 Notes de Théorie

**Phase Kill Chain** : Exploitation

**Type de Vulnérabilité** : Command Injection

**Code vulnérable typique** :
```python
_________________________________________________________________
_________________________________________________________________
```

### 🛠️ TP - Audit et Exploitation

#### 1. Découverte du Service

**Port identifié** : ____________________________________________

**Processus** : _________________________________________________

**Utilisateur exécutant le service** : __________________________

#### 2. Analyse du Code

**Fichier analysé** : ___________________________________________

**Ligne vulnérable** : __________________________________________

**Type de vulnérabilité** : _____________________________________

**Explication technique** :
```
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
```

#### 3. Proof of Concept

**Payload de test** :
```bash
_________________________________________________________________
```

**Résultat** : __________________________________________________

#### 4. Exploitation

**Payload final pour récupérer le flag** :
```bash
_________________________________________________________________
_________________________________________________________________
```

### 🚩 Flag Jour 4

**Localisation** : _____________________________________________

**Flag** : `FLAG{_____________________________________________}`

### 🛡️ Code Sécurisé Proposé

```python
# Version sécurisée :
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
```

**Score CVSS de la vulnérabilité** : ____ / 10

**Justification** : _____________________________________________

---

## 📅 JOUR 5 : Escalade de Privilèges

### 🎯 Objectif
Obtenir le contrôle Root complet du système.

### 📝 Notes de Théorie

**Phase Kill Chain** : Actions on Objectives

**Techniques d'Escalade** :
- SUID Binaries : _____________________________________________
- Cron Jobs : _________________________________________________
- Sudo Exploits : _____________________________________________

### 🛠️ TP - Root Exploit

#### 1. Énumération des Vecteurs

**Commande de recherche SUID** :
```bash
_________________________________________________________________
```

**Binaires SUID suspects** :
- _________________________________________________________________
- _________________________________________________________________

**Tâches Cron identifiées** :
```
_________________________________________________________________
```

#### 2. Analyse du Binaire SUID

**Binaire ciblé** : _____________________________________________

**Localisation** : ______________________________________________

**Que fait ce binaire ?** : _____________________________________

**Test du binaire** :
```bash
_________________________________________________________________
```

**Output** : ____________________________________________________

#### 3. Identification de la Vulnérabilité

**Type de vulnérabilité** : ☐ PATH Hijacking  ☐ Command Injection  ☐ Buffer Overflow  ☐ Autre : __________

**Explication technique** :
```
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
```

**Preuve de concept** :
```bash
_________________________________________________________________
```

#### 4. Exploitation Complète

**Commandes exécutées** :
```bash
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
```

**Root obtenu ?** : ☐ Oui  ☐ Non

**Preuve** :
```bash
# whoami
_________________________________________________________________

# id
_________________________________________________________________
```

### 🚩 Flag Final

**Localisation** : _____________________________________________

**Flag** : `FLAG{_____________________________________________}`

---

## 📄 Rapport de Pentest (Livrable Final)

### Structure du Rapport

#### 1. Executive Summary (1-2 pages)

**Résumé pour la direction** :
```
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
```

**Niveau de risque global** : ☐ Critique  ☐ Élevé  ☐ Moyen  ☐ Faible

#### 2. Méthodologie

**Frameworks utilisés** :
- _________________________________________________________________
- _________________________________________________________________

**Outils utilisés** :
- _________________________________________________________________
- _________________________________________________________________
- _________________________________________________________________

**Périmètre de test** : _________________________________________

**Dates du test** : Du ______________ au ______________

#### 3. Vulnérabilités Identifiées

**Tableau Récapitulatif** :

| ID | Vulnérabilité | Sévérité | CVSS | Jour |
|----|---------------|----------|------|------|
| V01 | SQL Injection | | | 2 |
| V02 | Local File Inclusion | | | 2 |
| V03 | Unrestricted File Upload | | | 2 |
| V04 | Hardcoded Credentials | | | 3 |
| V05 | Sudo Misconfiguration | | | 3 |
| V06 | Command Injection | | | 4 |
| V07 | SUID Binary Exploitation | | | 5 |

#### 4. Détail des Vulnérabilités

**Exemple pour V01 - SQL Injection** :

**Description** :
```
_________________________________________________________________
_________________________________________________________________
```

**Proof of Concept** :
```
_________________________________________________________________
```

**Impact** :
```
_________________________________________________________________
```

**Remédiation** :
```
_________________________________________________________________
_________________________________________________________________
```

*(Répéter pour chaque vulnérabilité)*

#### 5. Recommandations Prioritaires

**Priorité 1 (Critique)** :
1. _________________________________________________________________
2. _________________________________________________________________

**Priorité 2 (Élevée)** :
1. _________________________________________________________________
2. _________________________________________________________________

**Priorité 3 (Moyenne)** :
1. _________________________________________________________________

---

## 🏆 Récapitulatif de la Semaine

### Parcours d'Attaque

```
Jour 1: Reconnaissance
   ↓
Jour 2: SQLi → www-data shell
   ↓
Jour 3: SSH → developer → backup
   ↓
Jour 4: Command Injection → backup confirmed
   ↓
Jour 5: SUID/Cron → ROOT
```

### Flags Collectés (6 au total)

- [ ] Jour 1 : `FLAG{...}`
- [ ] Jour 2 : `FLAG{...}`
- [ ] Jour 3 Part 1 : `FLAG{...}`
- [ ] Jour 3 Part 2 : `FLAG{...}`
- [ ] Jour 4 : `FLAG{...}`
- [ ] Jour 5 : `FLAG{...}`

### Compétences Acquises

- [ ] Reconnaissance avec Nmap et Gobuster
- [ ] Exploitation de SQL Injection
- [ ] Exploitation de Local File Inclusion
- [ ] Upload et exécution de Web Shell
- [ ] Extraction de credentials
- [ ] Connexion SSH et pivot utilisateur
- [ ] Audit de code Python
- [ ] Exploitation de Command Injection
- [ ] Escalade de privilèges via SUID
- [ ] Exploitation de tâches Cron
- [ ] Rédaction de rapport de pentest professionnel

---

## 📚 Ressources Additionnelles

**Sites de Référence** :
- MITRE ATT&CK : https://attack.mitre.org/
- OWASP : https://owasp.org/
- GTFOBins : https://gtfobins.github.io/
- HackTricks : https://book.hacktricks.xyz/

**Pour Aller Plus Loin** :
- TryHackMe : https://tryhackme.com/
- HackTheBox : https://www.hackthebox.com/
- PentesterLab : https://pentesterlab.com/

---

## 💭 Notes Personnelles

```
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
_________________________________________________________________
```

---

**Félicitations pour avoir complété la formation Onion-Layer !** 🎉

**Date de fin** : _______________  
**Signature** : _______________
