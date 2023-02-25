----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT CHANGE ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING! SUPPORT WILL NOT BE PROVIDED IF YOU BREAK THE SCRIPT! --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT CHANGE ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING! SUPPORT WILL NOT BE PROVIDED IF YOU BREAK THE SCRIPT! --<!>--

Core.Commands.Add('skillmenu', 'Check your current skills or job reputation!', {}, true, function(source, args)
    TriggerClientEvent('boii-simpleskills:cl:SkillMenu', source)
end)

Core.Commands.Add('skilldrug', 'Check your current drugs skills !', {}, true, function(source, args)
    TriggerClientEvent('boii-simpleskills:cl:drugsmenu', source)
end)

function collectPlayerData()
    for _, playerId in ipairs(GetPlayers()) do
      local playerIdent = GetPlayerIdentifier(playerId, 0)
      local playerMetadata = GetPlayerMetadata(playerId)
    end
  end

  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(900000)
  
      collectPlayerData()
    end
  end)
