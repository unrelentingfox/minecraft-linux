#!/bin/bash
# ⚠️ DISCLAIMER: For educational and testing purposes only.
# Users are responsible for complying with all applicable terms of service.
set -e

echo "=== Uninstalling Prism Launcher ==="
echo

# Remove AppImage
if [ -f ~/Applications/PrismLauncher-9.4.AppImage ]; then
    echo "Removing Prism Launcher AppImage..."
    rm ~/Applications/PrismLauncher-9.4.AppImage
    echo "AppImage removed"
else
    echo "AppImage not found (already removed or not installed)"
fi

# Ask about data removal
echo
read -p "Remove Prism Launcher data and settings? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [ -d ~/.local/share/PrismLauncher ]; then
        echo "Removing Prism Launcher data..."
        rm -rf ~/.local/share/PrismLauncher
        echo "Data removed"
    fi
    
    if [ -d ~/.var/app/org.prismlauncher.PrismLauncher ]; then
        echo "Removing Flatpak data (if any)..."
        rm -rf ~/.var/app/org.prismlauncher.PrismLauncher
        echo "Flatpak data removed"
    fi
else
    echo "Keeping Prism Launcher data"
fi

echo
echo "=== Uninstall Complete ==="
