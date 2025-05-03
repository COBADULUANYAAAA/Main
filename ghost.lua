-- Ghost v0.1 by I N F E R N O

-- Inisialisasi GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local AutoFarmButton = Instance.new("TextButton")
local AutoQuestButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "Ghost_GUI"

MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 250, 0, 200)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)

AutoFarmButton.Parent = MainFrame
AutoFarmButton.Size = UDim2.new(0, 230, 0, 50)
AutoFarmButton.Position = UDim2.new(0, 10, 0, 10)
AutoFarmButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AutoFarmButton.Text = "Auto Farm"
AutoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)

AutoQuestButton.Parent = MainFrame
AutoQuestButton.Size = UDim2.new(0, 230, 0, 50)
AutoQuestButton.Position = UDim2.new(0, 10, 0, 70)
AutoQuestButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AutoQuestButton.Text = "Auto Quest"
AutoQuestButton.TextColor3 = Color3.fromRGB(255, 255, 255)

CloseButton.Parent = MainFrame
CloseButton.Size = UDim2.new(0, 230, 0, 50)
CloseButton.Position = UDim2.new(0, 10, 0, 130)
CloseButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Fungsi untuk Auto Farm
local function AutoFarm()
    while true do
        -- Lakukan farming (misalnya ambil pollen)
        local field = game.Workspace.FarmFields["SunflowerField"]
        -- Simulasi mengambil pollen
        field.Pollen.Value = field.Pollen.Value + 10
        wait(1) 
    end
end


local function AutoQuest()
    local questGiver = game.Workspace.QuestGiver
    if questGiver then
        
        local quest = questGiver.Quests[1]
        if quest then
      
            quest.Status = "Completed"
            wait(2)
        end
    end
end

AutoFarmButton.MouseButton1Click:Connect(function()
    spawn(AutoFarm)
end)

AutoQuestButton.MouseButton1Click:Connect(function()
    spawn(AutoQuest)
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
