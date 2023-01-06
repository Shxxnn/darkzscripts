_G.Supported = {
    [1444297073] = {
        Game = "Shortest Answer Wins",
        Path = "ShortestAnswerWins"
    },
    [4009558569] = {
        Game = "Type or Die",
        Path = "TypeOrDie"
    },
    [3681669024] = {
        Game = "Longest Answer Wins",
        Path = "LongestAnswerWins"
    },
    [22232358] = {
        Game = "Super Simon Says",
        Path = "SuperSimonSays"
    },
    [4086464379] = {
        Game = "Dunking Race",
        Path = "DunkingRace"
    },
    [3970304244] = {
        Game = "Goal Clicker",
        Path = "GoalClicker"
    },
    [2287245386] = {
        Game = "Hoopz [VEHICLES] (Basketball)",
        Path = "Hoopz!"
    },
    [3940690950] = {
        Game = "Merge Simulator",
        Path = "MergeSimulator"
    },
    [254394801] = {
        Game = "KAT!",
        Path = "KAT!"
    },
    [4123984621] = {
        Game = "🏆 ProTube Race Clicker",
        Path = "ProTubeRaceClicker"
    },
    [4176724365] = {
        Game = "+1 Blocks Every Second",
        Path = "+1BlocksEverySecond"
    },
    [2314144481] = {
        Game = "Strong Katana Simulator",
        Path = "StrongKatanaSimulator"
    },
    [2035583477] = {
        Game = "Tower Simulator",
        Path = "TowerSimulator"
    },
    [3882062045] = {
        Game = "Find The Simpsons",
        Path = "FindTheSimpsons"
    }
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

if detectgame() ~= nil then loadstring(game:HttpGet("https://raw.githubusercontent.com/Shxxnn/darkzscripts/main/Supported/" .. detectgame() .. ".lua"))()
else
    return print('Game is not supported')
end
