# multi-boot-hp-prodesk
Expérimentation multi-boot Linux, macOS, Windows et FreeBSD sur HP ProDesk, avec scripts Bash, automatisation et documentation open source.

## Introduction

Ce projet a pour but d’installer et d’automatiser le multi-boot de Linux, macOS, Windows 11 et FreeBSD sur un HP ProDesk reconditionné. Je souhaite partager tous les scripts, astuces et étapes pour permettre à n’importe qui d’en faire autant.

## Configuration matérielle

- HP ProDesk, i5-4160, 32Go RAM
- SSD 512Go, SSD 120Go, HDD 500Go
- GeForce GT 730

## Systèmes installés

- Ubuntu 24.04 LTS
- macOS Sonoma via OpenCore
- Windows 11 Pro
- FreeBSD 14

## Étapes du projet

1. Partitionnement et préparation des disques (script Bash)
2. Tests en virtualisation
3. Installation physique des OS
4. Sauvegarde, restauration automatisée
5. Optimisations et dépannage

## Structure du dépôt

- `scripts/` : scripts Bash pour chaque étape
- `doc/` : documentation, guides, schémas
- `images/` : photos hardware, copies d’écran

## Utilisation

Chacun peut utiliser, adapter ou améliorer ces scripts pour ses propres machines. Les scripts sont commentés et la documentation s’étoffe au fil du projet.

## Astuces & retours

J’ajoute ici régulièrement mes retours sur des bugs, des configs, des solutions trouvées (SATA, UEFI, etc.).

## Contribution

Toute suggestion, astuce, script ou même simple question est la bienvenue.  
Vous pouvez ouvrir une “issue” ou proposer une “pull request” !

## Licence

Ce projet est sous licence MIT : partagez, modifiez, adaptez librement en mentionnant l’auteur original.

