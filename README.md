## ✨ Features
- Control the density of traffic, pedestrians, parked cars, random vehicles, and scenario peds.
- Disable entire scenario types (e.g. police cars, races, etc.).
- Suppress unwanted world spawns (random cops, dispatch services, boats, trains, garbage trucks).
- Admin-only commands to toggle and adjust density multipliers.

---

## 📦 Installation
1. Copy this folder to your server resources as `briggzeee-npc-density`.
2. Add to your `server.cfg`:
   ```cfg
   ensure briggzeee-npc-density
   ```
3. Restart your server.

---

## ⚙️ Configuration
All settings are in `config.lua`.

### Main Switch
```lua
Config.Enabled = true -- master on/off switch
```

### Density Multipliers
```lua
Config.Density = {
  Vehicles        = 0.20, -- cars driving on roads
  Peds            = 0.30, -- walking pedestrians
  RandomVehicles  = 0.15, -- random driving spawns
  ParkedVehicles  = 0.20, -- parked cars
  ScenarioPeds    = 0.25, -- scenario peds (buskers, workers, etc.)
}
```
Values range from **0.0** (none) to **1.0** (default). Increase above 1.0 for extra busy streets (not recommended).

### Scenario Types
```lua
Config.DisableScenarioTypes = {
  'WORLD_VEHICLE_POLICE_CAR',
  'WORLD_VEHICLE_STREETRACE',
}
```
Remove or add scenario strings to block entire categories of NPC spawns.

### Suppress Options
```lua
Config.Suppress = {
  RandomCops   = true, -- no random police
  CopDispatch  = true, -- disables police/EMS/fire dispatch
  RandomBoats  = true, -- no random boats
  RandomTrains = true, -- no trains
  GarbageTrucks= true, -- no garbage trucks
  VehicleRewards = true, -- no free weapons from police cars
}
```

### Commands
```lua
Config.Commands = {
  Toggle = 'npcs_toggle', -- /npcs_toggle to enable/disable
  Level  = 'npcs_level',  -- /npcs_level 0.0-1.0 to adjust density quickly
}
```

### Permissions
```lua
Config.AdminOnly = true -- restrict commands to admins only
```
If using QBCore: checks for `admin` or `god` permission levels.  
If standalone: grant ACE permission `command.npcs` in your `server.cfg`:
```cfg
add_ace group.admin command.npcs allow
```

---

## 🧰 Commands
- `/npcs_toggle` → Toggle the script on/off locally.
- `/npcs_level 0.0-1.0` → Adjust all density multipliers to the same value.

---

## ✅ Notes
- Density natives must be called **every frame**. This script handles that for you.
- Some NPCs (like mission-specific spawns) are unaffected.
- Adjust values gradually to avoid an empty or overly crowded map.

---

## 📝 Credits
Made by **BriggZeee**
