#!/bin/bash



# NOT YET FINISHED
# Used to get a basic desktop configuration for arch


PartRoot="/dev/sda2"
PartBoot="/dev/sda1"
PartSwap="/dev/sda3"
PartHome="/dev/sda4"

mkdir root
mkdir root/boot
mkdir root/home

mkfs.vfat $PartBoot
mkfs.ext4 $PartRoot
mkfs.ext4 $PartHome
mkswap $PartSwap


ping -c 1 www.google.com

if [ $? != 0 ]
then
	exit 1
fi



pacman -S 



