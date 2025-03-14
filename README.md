# L-OnlyPistol

<div align="center">
  
  [![License](https://img.shields.io/badge/license-None-red.svg)](LICENSE)
  [![Discord](https://img.shields.io/discord/1324866018555723816?color=7289DA&label=Discord&logo=discord&logoColor=white)](https://discord.miguelmiranda.dev)
</div>

[English](#english) | [Español](#español)

# English
A FiveM resource that implements a pistol-only Free-for-All (FFA) combat system for ESX Framework.

## ✨ Features
- 🔫 Pistol-only combat zone with automatic weapon loadout
- 🌐 Dimension-based player separation (using routing buckets)
- 📍 Multiple spawn points for balanced gameplay
- ⚡ Automatic respawn system on death
- 🎒 Support for Lockser Inventory integration
- 💻 Command-based system to join/leave the FFA zone

## 📋 Dependencies
- ESX Framework
- mysql-async
- esx_ambulancejob
- lockserinventory (optional)

## 🚀 Installation
1. Download the resource
2. Place it in your FiveM resources folder
3. Add the following to your `server.cfg`:

### Comandos
- /salirffa - Salir de la zona FFA
- Se puede activar mediante export: exports['L-OnlyPistol']:UnirseFFA()
### Configuración
La configuración se encuentra en Shared/S-Shared.lua :

- Config.FFADimension - ID de la dimensión para la zona FFA
- Config.DefaultDimension - ID de la dimensión predeterminada
- Config.SalidaCoords - Coordenadas de salida al abandonar el FFA
- Config.RespawnCoords - Array de puntos posibles de reaparición
- Config.Weapons - Lista de pistolas permitidas
- Config.UsingLockserInventory - Activar integración con Lockser Inventory

# Lockser Shop - Social Media & Contact
## Official Links
- 🌐 Website: https://miguelmiranda.dev
- 🎮 Discord: https://discord.miguelmiranda.dev
- 📱 TikTok: https://tiktok.com/@migueelmirandaa
- 🐦 Twitter: https://x.com/migueelmirandaa
- 📸 Instagram: https://instagram.com/migueelmirandaa
- 🎥 YouTube: https://youtube.com/@migueelmirandaa

## Support
For support, questions, or suggestions, join our Discord community: https://discord.miguelmiranda.dev