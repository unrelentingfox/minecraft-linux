# Minecraft Offline Setup - Linux Mint

⚠️ **DISCLAIMER: For educational and testing purposes only. This setup is intended for offline/local testing environments and private servers. Users are responsible for complying with all applicable terms of service and licensing agreements.** ⚠️

Prism Launcher with offline configuration for testing Minecraft in offline environments.

## Quick Install

```bash
./install.sh              # Install Prism Launcher 9.4
./launch.sh               # Launch Prism Launcher (complete initial setup)
./apply-bypass.sh         # Apply offline configuration (after initial setup)
./launch.sh               # Launch again and create offline profile
./uninstall.sh            # Uninstall (optional)
```

## What Gets Installed

- **Prism Launcher 9.4** (AppImage) - Native Linux Minecraft launcher
  - **Note:** Version 9.4 is required - newer versions (10.x+) are not compatible
- **Offline Configuration** - Enables offline/testing mode
- Supports mods (Forge, Fabric, Quilt, NeoForge)
- Works with offline/local testing servers

## Manual Installation

### 1. Install Prism Launcher

```bash
./install.sh
```

### 2. Initial Setup

```bash
# Launch Prism Launcher
./launch.sh

# Go through the quick setup wizard
# Then CLOSE the launcher completely
```

### 3. Apply Offline Configuration

```bash
./apply-bypass.sh
```

### 4. Create Offline Profile

```bash
# Launch Prism Launcher again
./launch.sh
```

- Click "Accounts" → "Add Offline"
- Enter your desired username
- Set as default profile
- **Important:** Don't delete the "No Profile" entry

## Usage

```bash
# Launch Prism Launcher
./launch.sh
```

## Installing Mods

1. Create or select an instance
2. Click "Edit Instance" → "Mods"
3. Click "Download Mods"
4. Browse Modrinth or CurseForge
5. Install desired mods

## Troubleshooting

**Configuration not working?**
- Ensure you're using Prism Launcher 9.4 (check with `~/Applications/PrismLauncher-9.4.AppImage --version`)
- Check that accounts.json exists: `ls ~/.local/share/PrismLauncher/accounts.json`
- Don't delete the "No Profile" entry

**Can't launch game?**
- Ensure Java is installed (Prism can auto-download)
- Check instance settings for correct Java version
- Verify Minecraft version is fully downloaded

## Version Compatibility

- **Prism Launcher:** 9.4 only (newer versions 10.x+ have additional checks)
- **Alternative:** PolyMC 7.0 also works with this configuration

## References

- [Prism Launcher](https://prismlauncher.org/)
- [Offline Bypass](https://github.com/antunnitraj/Prism-Launcher-PolyMC-Offline-Bypass)
- [Original Launcher](https://github.com/antunnitraj/OfflineMinecraftLauncher)

## Disclaimer

⚠️ **For educational and testing purposes only. This is for offline/local testing environments and private servers. Users must comply with all applicable software licenses and terms of service. The authors assume no responsibility for misuse of this software.** ⚠️
