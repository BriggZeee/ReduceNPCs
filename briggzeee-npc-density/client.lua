local QBCore = nil


CreateThread(function()
while true do
Wait(Config.RefreshInterval or 5000)
if Config.Enabled and enabled then
applyOneTimeSuppressions()
applyScenarioDisables()
end
end
end)


-- Permission check
local function isAdmin()
if not Config.AdminOnly then return true end


if QBCore and QBCore.Functions and QBCore.Functions.HasPermission then
local hasAdmin = QBCore.Functions.HasPermission("admin")
local hasGod = QBCore.Functions.HasPermission("god")
return hasAdmin or hasGod
else

return IsPlayerAceAllowed(PlayerId(), "command.npcs")
end
end


-- Commands
RegisterCommand(Config.Commands.Toggle, function()
if not isAdmin() then
TriggerEvent('chat:addMessage', { args = { "^1System", "No permission." } })
return
end


enabled = not enabled
local state = enabled and '~g~enabled' or '~r~disabled'
BeginTextCommandThefeedPost('STRING')
AddTextComponentSubstringPlayerName(('NPC density controller %s'):format(state))
EndTextCommandThefeedPostTicker(false, false)
end, false)


RegisterCommand(Config.Commands.Level, function(_, args)
if not isAdmin() then
TriggerEvent('chat:addMessage', { args = { "^1System", "No permission." } })
return
end


local lvl = tonumber(args[1])
if not lvl then
print(('^3Usage:^7 /%s ^5[0.0 - 1.0]^7'):format(Config.Commands.Level))
return
end


lvl = math.max(0.0, math.min(1.0, lvl))
uniformOverride = lvl
BeginTextCommandThefeedPost('STRING')
AddTextComponentSubstringPlayerName(('NPC density level set to ^5%.2f^7'):format(lvl))
EndTextCommandThefeedPostTicker(false, false)
end, false)


AddEventHandler('playerSpawned', function()
if Config.Enabled and enabled then
applyOneTimeSuppressions()
applyScenarioDisables()
end
end)