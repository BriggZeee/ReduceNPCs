Config = {}

-- Master enable switch (set false to disable without removing the resource)
Config.Enabled = true


-- How often (ms) to apply non-frame-based settings (scenario toggles, etc.)
Config.RefreshInterval = 5000


-- Density multipliers (0.0 = none, 1.0 = default, >1.0 = more)
Config.Density = {
Vehicles = 0.20,
Peds = 0.30,
RandomVehicles = 0.15,
ParkedVehicles = 0.20,
ScenarioPeds = 0.25,
}


Config.DisableScenarioTypes = {
'WORLD_VEHICLE_AMBULANCE',
'WORLD_VEHICLE_FBI',
'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
'WORLD_VEHICLE_MILITARY_PLANES_BIG',
'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
'WORLD_VEHICLE_POLICE_CAR',
'WORLD_VEHICLE_POLICE_BIKE',
'WORLD_VEHICLE_SALTON_DIRT_BIKE',
'WORLD_VEHICLE_SECURITY_CAR',
'WORLD_VEHICLE_STREETRACE',
}


Config.Suppress = {
RandomCops = true,
CopDispatch = true,
RandomBoats = true,
RandomTrains = true,
GarbageTrucks = true,
RandomTrucks = true,
VehicleRewards = true,
}


Config.Commands = {
Toggle = 'npcs_toggle',
Level = 'npcs_level',
}


Config.AdminOnly = true