# multi-boot-hp-prodesk

Expérimentation multi-boot Linux, macOS, Windows et FreeBSD sur HP ProDesk, avec scripts Bash, automatisation et documentation open source.

## Objectifs du projet

- Installer et configurer plusieurs systèmes d’exploitation sur une seule machine :
  - Debian
  - macOS Monterey (via OpenCore)
  - Windows 10, Windows 11, Tiny10 (version allégée)
  - FreeBSD Stable
- Automatiser le partitionnement, l’installation et la sauvegarde via des scripts Bash
- Documenter toutes les étapes, astuces et incidents pour une démarche reproductible et collaborative
- Partager le projet en open source pour aider et inspirer la communauté

## Matériel utilisé

- HP ProDesk équipé d’un Intel i3-4160, 32Go RAM
- SSD 512Go pour Debian/macOS
- SSD 120Go pour Windows/FreeBSD
- HDD 500Go pour sauvegardes et images système
- Carte graphique NVIDIA GeForce GT 730

## Systèmes d’exploitation installés

- Debian 12 (Bookworm)
- macOS Monterey (via OpenCore)
- Windows 10
- Windows 11
- Tiny10 (version légère adaptée aux machines avec ressources limitées)
- FreeBSD Stable (branche stable pour serveur ou poste expérimental)

## Organisation du dépôt

- `README.md` : guide principal du projet
- `scripts/` : scripts Bash pour le partitionnement et les installations automatisées
- `doc/` : documentation technique, guides pas à pas, schémas
- `images/` : photos du matériel, captures d’écran

## Étapes du projet

- Planification des partitions multi-OS
- Partitionnement automatisé
- Script Bash pour préparer les SSD/HDD
- Installation séquentielle des OS :
  - Debian
  - macOS Monterey
  - Windows 10/11/Tiny10
  - FreeBSD Stable
- Gestion EFI/UEFI et bootloaders
- Sauvegarde et restauration (Clonezilla, dd, btrfs, zfs, outils FreeBSD)
- Optimisations et dépannage (drivers, EFI, multi-boot, partitionnement, astuces spécifiques Tiny10 et FreeBSD)
- Documentation et partage : guides pratiques, schémas, conseils
- Guide d’utilisation rapide

