# Multi-Boot HP ProDesk - Phase 1 : Préparation et Partitionnement Automatisé des SSD

## Description

Ce projet vise à expérimenter un multi-boot avancé sur HP ProDesk 600 G1 avec plusieurs OS : Debian, macOS Monterey, Windows, FreeBSD.

Cette première phase correspond à un script bash de partitionnement automatisé et rapide du SSD 1 (512 Go) en 3 partitions :

- Partition EFI (512 Mo, FAT32)
- Partition Debian (400 Go, ext4)
- Partition macOS (100 Go, à formater en APFS via l’installeur macOS)

L’objectif est de préparer le disque rapidement et de façon reproductible.

## Etat du projet

⚠️ Cette phase est actuellement en phase de test.  
Le script a été réalisé et validé en environnement Debian Live et testé en émulation QEMU.

## Contenu

- `scripts/partition_ssd1.sh` : Script bash de partitionnement

## Utilisation

1. Booter sur un environnement Debian Live (physique ou QEMU).
2. Identifier le disque cible (`/dev/sda` par défaut, à adapter).
3. Exécuter le script avec les droits root :
