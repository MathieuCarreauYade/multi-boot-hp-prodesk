# multi-boot-hp-prodesk
Expérimentation multi-boot Linux, macOS, Windows et FreeBSD sur HP ProDesk, avec scripts Bash, automatisation et documentation open source.

Multi-Boot HP ProDesk
Expérimentation multi-boot Debian, macOS Monterey, Windows 10/11/Tiny10 et FreeBSD Stable sur un HP ProDesk reconditionné. Scripts Bash, automatisation et documentation open source.
Objectifs du projet
Installer et configurer : Debian, macOS Monterey (OpenCore), Windows 10, Windows 11, Tiny10, FreeBSD Stable sur une seule machine.
Automatiser le partitionnement, l’installation et la sauvegarde via des scripts Bash.
Documenter toutes les étapes, astuces et incidents pour une démarche reproductible et collaborative.
Partager le projet en open source pour aider et inspirer la communauté.
Matériel utilisé
HP ProDesk avec Intel i5-4160, 32Go RAM
SSD 512Go (Debian/macOS)
SSD 120Go (Windows/FreeBSD)
HDD 500Go (sauvegardes, images système)
Carte graphique NVIDIA GeForce GT 730
Systèmes d’exploitation installés
Debian 12 (Bookworm)
macOS Monterey (via OpenCore)
Windows 10
Windows 11
Tiny10
(Version légère de Windows adaptée aux machines avec ressources limitées)
FreeBSD Stable
(Branch stable pour serveur ou poste expérimentaux)
Organisation du dépôt
README.md : guide principal du projet.
scripts/ : scripts Bash pour partitionnement et installations automatisées.
doc/ : documentation technique, guides pas à pas, schémas.
images/ : photos du matériel, captures d’écran.
Étapes du projet
Planification des partitions multi-OS
Partitionnement automatisé
Script Bash pour préparer les SSD/HDD
Installation séquentielle des OS
Debian > macOS Monterey > Windows 10/11/Tiny10 > FreeBSD Stable
Gestion EFI/UEFI et bootloaders
Sauvegarde et restauration
Solutions avec Clonezilla, dd, btrfs, zfs ou outils FreeBSD
Optimisations et dépannage
Problèmes drivers, EFI, multi-boot, partitionnement (astuces pour Tiny10 et FreeBSD)
Documentation et partage
Guides pratiques, schémas, conseils
Guide d’utilisation rapide
