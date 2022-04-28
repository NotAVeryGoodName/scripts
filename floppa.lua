getgenv().click = true ---- Auto Clicks Floppa
getgenv().money = true ---- Auto Collects Money
getgenv().food = true ---- Auto Teleports you to bowl and Auto Fills Bowl
getgenv().buyfood = true --- Buy Food
getgenv().autoequip = true --- Equips Food
getgenv().hunger = true --- Checks Hunger Value
getgenv().buyall = true --- Buys other items(maid, other floppa, etc.)

spawn(function()
    while getgenv().click == true do
        for i ,v in pairs(game:GetService("Workspace").Floppa:GetChildren()) do
            if v.Name == "ClickDetector" then
                fireclickdetector(v)
            end
        end
        wait()
    end
end)

spawn(function()
    local tool = "Floppa Food"
    while getgenv().autoequip == true do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") and v.Name == tool then
    v.Parent = game:GetService("Players").LocalPlayer.Character
    end
    end
    wait()
end
end)

spawn(function()
        while getgenv().money == true do
            for i ,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "Money" or v.Name == "Money Bag" and v:FindFirstChild('TouchInterest') then
                firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v, 0)
            end
            end
            wait()
            end
        end)

spawn(function()
while getgenv().hunger == true do
for i ,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Hunger" and v:IsA("NumberValue") and v.Value < 45 then
    local ohString1 = "Floppa Food"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    end
end
wait(5)
end
end)

spawn(function()
        while getgenv().food == true do
        for i ,v in pairs(game:GetService("Workspace").Bowl:GetDescendants()) do
          if v.Name == "Part" then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
              if v:FindFirstChild("ProximityPrompt") then
              fireproximityprompt(v.ProximityPrompt)
          end
        end
        end
        wait()
        end
        end)

spawn(function()
    while getgenv().buyall == true do
    local ohString1 = "Cool Hat"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Neko Maid"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Neko Maid 2.0"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Scratching Post"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Cat Bed"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Altar"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Bingus"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Sogga"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Catnip Plant"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Baby Bowl"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Ms. Floppa"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    local ohString1 = "Poop Fertilizer"
    game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
    wait()
    end
end)
