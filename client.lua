local appid = '624489821083009034'
local asset = 'galaxy'

function SetRP()
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())

    SetDiscordAppId(appid)
    SetDiscordRichPresenceAsset(asset)
    SetDiscordRichPresenceAssetText('Galaxy Network')
    SetRichPresence('(' .. GetNumberOfPlayers() .. ' / 32)')
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10)
    SetRP()
  end
end)
