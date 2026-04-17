#!/usr/bin/env bash
# --- VoidPurgeX v1.0 | by UwillSurrender ---

# Define Colors
RED='\033[0;31m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

clear
echo -e "${PURPLE}--- VOIDPURGEX INITIALIZED ---${NC}"
echo -e "${CYAN}[SYSTEM CHECK]: Analyzing storage health...${NC}"

# Check storage before
BEFORE=$(du -sh /nix/store 2>/dev/null | cut -f1)
echo -e "Current Nix Store Size: ${BEFORE}"

echo ""
echo -e "${RED}[ACTION]: PURGING DIGITAL DEBRIS...${NC}"
echo -e "${RED}All old versions must surrender.${NC}"
echo ""

# The actual "Cleaning" commands
nix-collect-garbage -d
rm -rf ~/.cache/*

# Check storage after
AFTER=$(du -sh /nix/store 2>/dev/null | cut -f1)

echo ""
echo -e "${PURPLE}------------------------------------------${NC}"
echo -e "${CYAN}         VOIDPURGEX V1.0 COMPLETE         ${NC}"
echo -e "${GREEN}  Store Optimized: ${BEFORE} -> ${AFTER}  ${NC}"
echo -e "${PURPLE}------------------------------------------${NC}"
echo -e "${CYAN}      Brought to you by UwillSurrender    ${NC}"
echo -e "${PURPLE}------------------------------------------${NC}"
echo ""
