_G.Supported = {
    [8750997647] = {
        Game = "Tapping Legends X",
        Path = "TappingLegendsX"
    },
    [9551640993] = {
        Game = "Mining Simulator 2",
        Path = "MiningSimulator2"
    },
}

local function detectgame()
   local UrlPath
   for i,v in pairs(_G.Supported) do
   if i == game.GameId then
       UrlPath = v.Path
    end
end
return UrlPath
end

if detectgame() ~= nil then loadstring(game:HttpGet("https://raw.githubusercontent.com/Shxxnn/darkzscripts/main/" .. detectgame() .. ".lua"))()
else
    return print('Game is not supported')
end
