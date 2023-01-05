if not LPH_OBFUSCATED then
	LPH_JIT_MAX = function(...)
		return (...)
	end;
	LPH_NO_VIRTUALIZE = function(...)
		return (...)
	end;
end

    local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()
	local win = SolarisLib:New({
		Name = "ProTube Race Clicker",
		FolderToSave = "SolarisLibStuff"
	})
	local tab = win:Tab("Main")
	local farm = tab:Section("Farm")
	local fuse = tab:Section("Fuse")
    local pets = tab:Section("Pets")
    local tool = tab:Section("Tools")

    farm:Toggle("Auto Click", false, "Auto Clicker", function(t)
        _G.click = t
        while _G.click do
            wait()
            pcall(function()
                game:GetService("ReplicatedStorage").RemoteEvents.ToServer.PlayerClick:InvokeServer()
            end)
        end
    end)

farm:Toggle("Auto Farm Zone 1", false, "Auto Farm Zone 1", function(t)
        _G.Auto1 = t
        while _G.Auto1 do
            wait()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-141.37, 4.36, 295252.56)
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-142, 4, 6)
            end)
        end
	end)
farm:Toggle("Auto Farm Zone 2", false, "Auto Farm Zone 2", function(t)
        _G.Auto2 = t
        while _G.Auto2 do
            wait()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.011, 4.569, 295250.75)
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36, 4, 8)
            end)
        end
	end)

 --Zone 3   63, 4, 7
farm:Toggle("Auto Farm Zone 3", false, "Auto Farm Zone 3", function(t)
        _G.Auto3 = t
        while _G.Auto3 do
            wait()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.15, 4.40, 295250.34)
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63, 4, 7)
            end)
        end
	end)

farm:Toggle("Auto Farm Zone 4", false, "Auto Farm Zone 4", function(t)
        _G.Auto4 = t
    while _G.Auto4 do
        wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(164.48, 4.87, 295250.34)
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(165, 4, 9)
        end)
    end
	end)
--266, 4, 9
farm:Toggle("Auto Farm Zone 5", false, "Auto Farm Zone 5", function(t)
        _G.Auto5 = t
        while _G.Auto5 do
            wait()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(264.56, 4.82, 295250.43)
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266, 4, 9)    
            end)
        end
	end)

--367, 4, 8

farm:Toggle("Auto Farm Zone 6", false, "Auto Farm Zone 5", function(t)
    _G.Auto6 = t
    while _G.Auto6 do
        wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(366.3, 4.4, 295250.43)
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(367, 4, 8)    
        end)
    end
end)

fuse:Toggle("Auto Fuse Pets", false, "Auto Fuse Pets", function(bool)
    PetFuse = bool;
end)

fuse:Toggle("Auto Fuse Tool", false, "Auto Fuse Tools", function(bool)
    ToolFuse = bool;
end)

pets:Toggle("Auto Egg 20", false, "Egg 20", function(bool)
    Egg20 = bool;
end)

pets:Toggle("Auto Egg 200", false, "Egg 200", function(bool)
    Egg200 = bool;
end)

pets:Toggle("Auto Egg 300", false, "Egg 300", function(bool)
    Egg300 = bool;
end)

pets:Toggle("Auto Egg 3K", false, "Egg 3k", function(bool)
    Egg3k = bool;
end)

pets:Toggle("Auto Egg 4K", false, "Egg 4k", function(bool)
    Egg4k = bool;
end)

pets:Toggle("Auto Egg 45K", false, "Egg 45K", function(bool)
    Egg45k = bool;
end)

pets:Toggle("Auto Egg 67K", false, "Egg 67k", function(bool)
    Egg67k = bool;
end)

pets:Toggle("Auto Egg 675K", false, "Egg 67k", function(bool)
    Egg675k = bool;
end)

pets:Toggle("Auto Egg 1M", false, "Egg 1M", function(bool)
    Egg1M = bool;
end)

pets:Toggle("Auto Egg 11M", false, "Egg 11M", function(bool)
    Egg11M = bool;
end)

pets:Toggle("Auto Egg 16M", false, "Egg 16M", function(bool)
    Egg16M = bool;
end)

pets:Toggle("Auto Egg 165M", false, "Egg 165M", function(bool)
    Egg165M = bool;
end)

tool:Toggle("Auto Tool 100", false, "Tool 100", function(bool)
    Camera100 = bool;
end)

tool:Toggle("Auto Tool 1K", false, "Tool 1K", function(bool)
    Camera1k = bool;
end)

tool:Toggle("Auto Tool 22K", false, "Tool 22K", function(bool)
    Camera22k = bool;
end)

tool:Toggle("Auto Tool 340K", false, "Tool 340K", function(bool)
    Camera340k = bool;
end)

tool:Toggle("Auto Tool 5M", false, "Tool 5M", function(bool)
    Camera5M = bool;
end)

tool:Toggle("Auto Tool 76M", false, "Tool 76M", function(bool)
    Camera76M = bool;
end)

spawn(function()
    while wait() do
        if PetFuse then
            for i = 1, 110 do
                local args = {
                    [1] = i
                }
                
                game:GetService("ReplicatedStorage").RemoteEvents.ToServer.UpgradePet:InvokeServer(unpack(args))
            end
        end
    end
end)

spawn(function()
	while wait() do
		if Egg20 then
            local args = {1, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg200 then
            local args = {2, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg300 then
            local args = {3, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg3k then
            local args = {4, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg4k then
            local args = {5, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg45k then
            local args = {6, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg67k then
            local args = {7, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)
spawn(function()
	while wait() do
		if Egg675k then
            local args = {8, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)
spawn(function()
	while wait() do
		if Egg1M then
            local args = {9, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg11M then
            local args = {10, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg16M then
            local args = {11, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Egg165M then
            local args = {12, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenEgg:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Camera100 then
            local args = {1, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenCrate:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Camera1k then
            local args = {2, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenCrate:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Camera22k then
            local args = {3, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenCrate:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Camera340k then
            local args = {4, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenCrate:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Camera5M then
            local args = {5, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenCrate:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if Camera76M then
            local args = {6, 1}
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.OpenCrate:InvokeServer(unpack(args))
          end
	end
end)

spawn(function()
	while wait() do
		if ToolFuse then
            for i = 1, 55 do
                local args = {
                    [1] = i
                }
                
                game:GetService("ReplicatedStorage").RemoteEvents.ToServer.UpgradeTool:InvokeServer(unpack(args))
            end
        end
	end
end)