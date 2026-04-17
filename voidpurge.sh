#!/bin/bash
clear
echo -e "\e[1;35m-------------------------------------------\e[0m"
echo -e "\e[1;36m       VOIDPURGE V1.0 - UWILLSURRENDER      \e[0m"
echo -e "\e[1;35m-------------------------------------------\e[0m"

echo -e "\e[1;33m[!] ACCESSING NIX-STORE...\e[0m"
sleep 1

# This is the actual command that removes the files
echo -e "\e[1;32m[+] DELETING OLD GENERATIONS...\e[0m"
nix-env --delete-generations old

echo -e "\e[1;32m[+] COLLECTING GARBAGE...\e[0m"
nix-collect-garbage -d

echo -e "\e[1;32m[+] OPTIMIZING HARD LINKS...\e[0m"
nix-store --optimise

echo -e "\e[1;35m-------------------------------------------\e[0m"
echo -e "\e[1;36m    PURGE COMPLETE. DEVICE OPTIMIZED.      \e[0m"
echo -e "\e[1;35m-------------------------------------------\e[0m"
