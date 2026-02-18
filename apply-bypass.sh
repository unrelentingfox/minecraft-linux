#!/bin/bash
# ⚠️ DISCLAIMER: For educational and testing purposes only.
# Users are responsible for complying with all applicable terms of service.
set -e

echo "=== Applying Offline Configuration ==="
echo

# Check if launcher is running
if pgrep -f "PrismLauncher" >/dev/null; then
	echo "Error: Prism Launcher is running. Please close it first."
	exit 1
fi

# AppImage stores data in ~/.local/share/PrismLauncher
PRISM_DATA_DIR="$HOME/.local/share/PrismLauncher"
mkdir -p "$PRISM_DATA_DIR"

# Backup existing accounts.json if it exists
if [ -f "$PRISM_DATA_DIR/accounts.json" ]; then
	echo "Backing up existing accounts.json..."
	cp "$PRISM_DATA_DIR/accounts.json" "$PRISM_DATA_DIR/accounts.json.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Create bypass configuration
echo "Creating bypass configuration..."
echo '{"accounts": [{"entitlement": {"canPlayMinecraft": true,"ownsMinecraft": true},"type": "MSA"}],"formatVersion": 3}' >"$PRISM_DATA_DIR/accounts.json"

echo
echo "=== Configuration Applied Successfully ==="
echo
echo "Next steps:"
echo "1. Launch Prism Launcher: ./launch.sh"
echo "2. Click 'Accounts' → 'Add Offline'"
echo "3. Enter your desired username"
echo "4. Set as default profile"
echo "5. IMPORTANT: Don't delete the 'No Profile' entry"
echo
echo "Done!"
