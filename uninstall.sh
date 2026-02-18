#!/bin/bash
# ⚠️ DISCLAIMER: For educational and testing purposes only.
# Users are responsible for complying with all applicable terms of service.
set -e

echo "=== Uninstalling Prism Launcher ==="
echo

# Remove AppImage
if [ -f "$HOME/Applications/PrismLauncher-9.4.AppImage" ]; then
	echo "Removing Prism Launcher AppImage..."
	rm "$HOME/Applications/PrismLauncher-9.4.AppImage"
	echo "AppImage removed"
else
	echo "AppImage not found (already removed or not installed)"
fi

# Remove desktop entry
if [ -f "$HOME/.local/share/applications/minecraft-prism.desktop" ]; then
	echo "Removing desktop entry..."
	rm "$HOME/.local/share/applications/minecraft-prism.desktop"
	echo "Desktop entry removed"
fi

# Ask about data removal
echo
read -p "Remove Prism Launcher data and settings? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
	if [ -d "$HOME/.local/share/PrismLauncher" ]; then
		echo "Removing Prism Launcher data..."
		rm -rf "$HOME/.local/share/PrismLauncher"
		echo "Data removed"
	fi

	if [ -d "$HOME/.var/app/org.prismlauncher.PrismLauncher" ]; then
		echo "Removing Flatpak data (if any)..."
		rm -rf "$HOME/.var/app/org.prismlauncher.PrismLauncher"
		echo "Flatpak data removed"
	fi
else
	echo "Keeping Prism Launcher data"
fi

echo
echo "=== Uninstall Complete ==="
