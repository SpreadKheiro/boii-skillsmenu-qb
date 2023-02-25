local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local MenuName = Config.CoreSettings.MenuName

RegisterNetEvent('boii-simpleskills:cl:drugsmenu', function()
    exports[MenuName]:openMenu(MainMenu)
end)

RegisterNetEvent('boii-simpleskills:cl:drugsmenu', function(args)
    local pData = Core.Functions.GetPlayerData()
    local args = tonumber(args)
        local Skills = {
            {
                header = 'Skills',
                txt = 'View your current experience here!',
                icon = 'fa-solid fa-arrow-up-right-dots',
                isMenuHeader = true
            },
            {
                header = 'Reputation de Drug',
                txt = 'Current Experience: '..pData.metadata['dealerrep'],
                icon = 'fa-solid fa-cannabis',
            },
            {
                header = 'Exit',
                icon = 'fa-solid fa-circle-xmark',
                params = {
                    event = 'boii-drugs:cl:StopMenu'
                }
            }
        }
        exports[MenuName]:openMenu(Skills)
end)