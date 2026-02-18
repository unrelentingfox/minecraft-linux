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
mkdir -p "$HOME/Applications"

# Download Prism Launcher 9.4
echo "Downloading Prism Launcher 9.4..."
cd "$HOME/Applications"
wget -O PrismLauncher-9.4.AppImage "https://github.com/PrismLauncher/PrismLauncher/releases/download/9.4/PrismLauncher-Linux-x86_64.AppImage"

# Make it executable
chmod +x PrismLauncher-9.4.AppImage

# Create desktop entry
echo "Creating desktop entry..."
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$HOME/.local/share/applications"
cat >"$HOME/.local/share/applications/minecraft-prism.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Minecraft (Prism Launcher)
Comment=Launch Minecraft with Prism Launcher
Exec=$SCRIPT_DIR/launch.sh
Path=$SCRIPT_DIR
Icon=minecraft
Terminal=false
Categories=Game;
EOF

echo
echo "=== Installation Complete ==="
echo
echo "Next steps:"
echo "1. Run: ./launch.sh"
echo "2. Complete the setup wizard"
echo "3. Close the launcher completely"
echo "4. Run: ./apply-bypass.sh"
