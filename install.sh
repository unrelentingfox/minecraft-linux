#!/bin/bash
# ⚠️ DISCLAIMER: For educational and testing purposes only.
# Users are responsible for complying with all applicable terms of service.
set -e

echo "=== Installing Prism Launcher 9.4 (AppImage) ==="
echo

# Remove the newer Flatpak version
echo "Removing newer Flatpak version..."
flatpak uninstall -y org.prismlauncher.PrismLauncher || true

# Create directory for AppImage
mkdir -p ~/Applications

# Download Prism Launcher 9.4
echo "Downloading Prism Launcher 9.4..."
cd ~/Applications
wget -O PrismLauncher-9.4.AppImage "https://github.com/PrismLauncher/PrismLauncher/releases/download/9.4/PrismLauncher-Linux-x86_64.AppImage"

# Make it executable
chmod +x PrismLauncher-9.4.AppImage

echo
echo "=== Installation Complete ==="
echo
echo "Next steps:"
echo "1. Run: ./launch.sh"
echo "2. Complete the setup wizard"
echo "3. Close the launcher completely"
echo "4. Run: ./apply-bypass.sh"
