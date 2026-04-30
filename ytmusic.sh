#!/usr/bin/env bash

# YouTube Music Desktop App (th-ch) Integration for SpotFreedom
# Designed for Linux (Ubuntu-based systems)

clr='\033[0m'
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[0;33m'

# Use the new Pear Desktop repository as the primary source
REPO="pear-devs/pear-desktop"
API_URL="https://api.github.com/repos/$REPO/releases/latest"

echo -e "${yellow}Almighty Shogun is initiating YouTube Music integration...${clr}"

# Detect Architecture
ARCH=$(uname -m)
case $ARCH in
    x86_64)  DEB_ARCH="amd64" ;;
    aarch64) DEB_ARCH="arm64" ;;
    *)       echo -e "${red}Error:${clr} Unsupported architecture: $ARCH"; exit 1 ;;
esac

echo -e "${green}Checking for the latest version of YouTube Music (Pear Desktop)...${clr}"

# Fetch the download URL for the .deb package
DOWNLOAD_URL=$(curl -s $API_URL | grep "browser_download_url" | grep "_amd64.deb" | cut -d '"' -f 4)

if [ -z "$DOWNLOAD_URL" ]; then
    echo -e "${red}Error:${clr} Could not find the latest .deb package for $ARCH."
    exit 1
fi

echo -e "${green}Downloading latest release from GitHub...${clr}"
wget -O /tmp/youtube-music-latest.deb "$DOWNLOAD_URL"

echo -e "${yellow}Installing YouTube Music Desktop App...${clr}"
sudo apt update && sudo apt install -y /tmp/youtube-music-latest.deb

# Cleanup
rm /tmp/youtube-music-latest.deb

echo -e "\n${green}Eternity has been expanded!${clr}"
echo -e "YouTube Music Desktop App (th-ch) is now installed and ad-free by default."
echo -e "You can launch it from your application menu or by running 'youtube-music'."
