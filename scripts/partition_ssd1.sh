#!/bin/bash

# Script de partitionnement automatique pour SSD1
# Schéma : EFI 512Mo, Debian 400Go (ext4), macOS 100Go (APFS à formater à l'install macOS)
# Attention : supprime toutes les partitions existantes sur le disque ciblé !

SSD="/dev/sda"   # Ajuster selon l'identifiant réel dans lsblk
EFI_SIZE="512M"
DEBIAN_SIZE="400G"
MACOS_SIZE="100G"

echo "Ce script va effacer toutes les partitions de $SSD."
read -p "Confirmer (oui/non) ? " answer
if [ "$answer" != "oui" ]; then
  echo "Abandon."
  exit 1
fi

echo "Effacement des partitions existantes..."
sudo sgdisk --zap-all $SSD

echo "Création d'une nouvelle table GPT..."
sudo sgdisk --clear $SSD

echo "Création partition EFI (type ef00) de $EFI_SIZE..."
sudo sgdisk --new=1:0:+$EFI_SIZE --typecode=1:ef00 --change-name=1:"EFI System Partition" $SSD

echo "Création partition Debian (type 8300) de $DEBIAN_SIZE..."
sudo sgdisk --new=2:0:+$DEBIAN_SIZE --typecode=2:8300 --change-name=2:"Debian Root" $SSD

echo "Création partition macOS (type af00) de $MACOS_SIZE..."
sudo sgdisk --new=3:0:+$MACOS_SIZE --typecode=3:af00 --change-name=3:"macOS APFS" $SSD

echo "Affichage table de partitions finale :"
sudo sgdisk --print $SSD

echo "Formatage partition EFI en FAT32..."
sudo mkfs.fat -F32 ${SSD}1

echo "Formatage partition Debian en ext4..."
sudo mkfs.ext4 ${SSD}2

echo "La partition macOS (${SSD}3) doit être formatée en APFS depuis l'installateur macOS."

echo "Partitionnement terminé avec succès !"
