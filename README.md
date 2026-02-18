# Minecraft Offline Setup - Linux Mint

Prism Launcher with offline bypass for playing Minecraft without a Microsoft account.

## Quick Install

```bash
./install.sh
```

## What Gets Installed

- **Prism Launcher** (via Flatpak) - Native Linux Minecraft launcher
- **Offline Bypass** - Enables playing without Microsoft account
- Supports mods (Forge, Fabric, Quilt, NeoForge)
- Works with offline/cracked servers

## Manual Installation

### 1. Install Prism Launcher

```bash
# Ensure Flatpak is set up
sudo apt update
sudo apt install flatpak

# Add Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Prism Launcher
flatpak install -y flathub org.prismlauncher.PrismLauncher
```

### 2. Initial Setup

```bash
# Launch Prism Launcher
flatpak run org.prismlauncher.PrismLauncher

# Go through the quick setup wizard
# Then CLOSE the launcher completely
```

### 3. Apply Offline Bypass

```bash
# Create the bypass configuration
echo '{"accounts": [{"entitlement": {"canPlayMinecraft": true,"ownsMinecraft": true},"type": "MSA"}],"formatVersion": 3}' > ~/.var/app/org.prismlauncher.PrismLauncher/data/PrismLauncher/accounts.json
```

### 4. Create Offline Account

- Launch Prism Launcher again
- Click "Accounts" → "Add Offline"
- Enter your desired username
- Set as default account
- **Important:** Don't delete the "No Profile" account

## Usage

```bash
# Launch Prism Launcher
flatpak run org.prismlauncher.PrismLauncher

# Or create desktop shortcut (done automatically by Flatpak)
```

## Installing Mods

1. Create or select an instance
2. Click "Edit Instance" → "Mods"
3. Click "Download Mods"
4. Browse Modrinth or CurseForge
5. Install desired mods

## Troubleshooting

**Bypass not working?**
- Ensure you're using Prism Launcher 9.4 or older
- Check that accounts.json exists in the correct location
- Don't delete the "No Profile" account

**Can't launch game?**
- Ensure Java is installed (Prism can auto-download)
- Check instance settings for correct Java version
- Verify Minecraft version is fully downloaded

## Version Compatibility

- **Prism Launcher:** 9.4 or older (newer versions have additional checks)
- **Alternative:** PolyMC 7.0 also works with this bypass

## References

- [Prism Launcher](https://prismlauncher.org/)
- [Offline Bypass](https://github.com/antunnitraj/Prism-Launcher-PolyMC-Offline-Bypass)
- [Original Launcher](https://github.com/antunnitraj/OfflineMinecraftLauncher)

## Disclaimer

⚠️ For entertainment purposes only. This is for offline/singleplayer use and private servers.
