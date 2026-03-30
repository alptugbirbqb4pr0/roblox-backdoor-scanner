-- Roblox Backdoor Scanner v3.0 - Gerçek Backdoor Tespiti
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local TweenService = game:GetService("TweenService")

-- Ana GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BackdoorScanner"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- Ana frame (sürükle-bırak)
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 220)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -110)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 15)
MainCorner.Parent = MainFrame

local Shadow = Instance.new("UIStroke")
Shadow.Color = Color3.fromRGB(0, 0, 0)
Shadow.Thickness = 3
Shadow.Transparency = 0.7
Shadow.Parent = MainFrame

-- Credit
local CreditLabel = Instance.new("TextLabel")
CreditLabel.Size = UDim2.new(0, 120, 0, 25)
CreditLabel.Position = UDim2.new(1, -130, 1, -30)
CreditLabel.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
CreditLabel.Text = "Made by tagger!"
CreditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditLabel.TextScaled = true
CreditLabel.Font = Enum.Font.GothamBold
CreditLabel.Parent = MainFrame

local CreditCorner = Instance.new("UICorner")
CreditCorner.CornerRadius = UDim.new(0, 8)
CreditCorner.Parent = CreditLabel

CreditLabel.MouseEnter:Connect(function()
    TweenService:Create(CreditLabel, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(100, 200, 255),
        Size = UDim2.new(0, 130, 0, 28)
    }):Play()
end)

CreditLabel.MouseLeave:Connect(function()
    TweenService:Create(CreditLabel, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(0, 162, 255),
        Size = UDim2.new(0, 120, 0, 25)
    }):Play()
end)

-- Title bar
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 15)
TitleCorner.Parent = TitleBar

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(1, -40, 1, 0)
TitleText.BackgroundTransparency = 1
TitleText.Text = "BACKDOOR SCANNER v3.0"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextScaled = true
TitleText.Font = Enum.Font.GothamBold
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.Parent = TitleBar

-- Close button
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Parent = TitleBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseButton

-- Status label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -20, 0, 40)
StatusLabel.Position = UDim2.new(0, 10, 0, 50)
StatusLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
StatusLabel.Text = "Backdoor ara"
StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 150)
StatusLabel.TextScaled = true
StatusLabel.Font = Enum.Font.GothamSemibold
StatusLabel.Parent = MainFrame

local StatusCorner = Instance.new("UICorner")
StatusCorner.CornerRadius = UDim.new(0, 10)
StatusCorner.Parent = StatusLabel

-- Scan button
local ScanButton = Instance.new("TextButton")
ScanButton.Size = UDim2.new(0.88, 0, 0, 50)
ScanButton.Position = UDim2.new(0.06, 0, 0.48, 0)
ScanButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
ScanButton.Text = "BACKDOOR BUL"
ScanButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ScanButton.TextScaled = true
ScanButton.Font = Enum.Font.GothamBold
ScanButton.Parent = MainFrame

local ScanCorner = Instance.new("UICorner")
ScanCorner.CornerRadius = UDim.new(0, 12)
ScanCorner.Parent = ScanButton

-- Require panel
local RequirePanel = Instance.new("Frame")
RequirePanel.Size = UDim2.new(0.88, 0, 0, 70)
RequirePanel.Position = UDim2.new(0.06, 0, 0.48, 0)
RequirePanel.BackgroundTransparency = 1
RequirePanel.Visible = false
RequirePanel.Parent = MainFrame

local RequireInput = Instance.new("TextBox")
RequireInput.Size = UDim2.new(0.65, 0, 0.95, 0)
RequireInput.Position = UDim2.new(0, 5, 0, 2)
RequireInput.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
RequireInput.Text = ""
RequireInput.PlaceholderText = "Require ID yaz"
RequireInput.TextColor3 = Color3.fromRGB(255, 255, 255)
RequireInput.TextScaled = true
RequireInput.Font = Enum.Font.Code
RequireInput.Parent = RequirePanel

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 10)
InputCorner.Parent = RequireInput

local ExecButton = Instance.new("TextButton")
ExecButton.Size = UDim2.new(0.32, -5, 0.95, 0)
ExecButton.Position = UDim2.new(0.67, 0, 0, 2)
ExecButton.BackgroundColor3 = Color3.fromRGB(255, 162, 0)
ExecButton.Text = "LOAD"
ExecButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecButton.TextScaled = true
ExecButton.Font = Enum.Font.GothamBold
ExecButton.Parent = RequirePanel

local ExecCorner = Instance.new("UICorner")
ExecCorner.CornerRadius = UDim.new(0, 10)
ExecCorner.Parent = ExecButton

-- 🎯 GERÇEK BACKDOOR TESPİTİ - SADECE OYUN İÇİNDEKİ BACKDOOR'LAR
local function scanGameBackdoors()
    local backdoorFound = false
    local backdoorDetails = {}
    
    -- 1. ReplicatedStorage'da yaygın backdoor isimlerini ara
    local repStorage = game:GetService("ReplicatedStorage")
    local commonBackdoorNames = {
        "Backdoor", "backdoor", "require", "loadstring",
        "RemoteEvent", "RemoteFunction", "HttpGet", "HttpRequest",
        "Synapse", "Krnl", "Executor", "Admin"
    }
    
    for _, obj in pairs(repStorage:GetDescendants()) do
        if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
            for _, name in pairs(commonBackdoorNames) do
                if string.find(string.lower(obj.Name), name:lower()) then
                    backdoorFound = true
                    table.insert(backdoorDetails, obj.Name .. " (" .. obj.ClassName .. ")")
                    break
                end
            end
        end
    end
    
    -- 2. Workspace'de gizli backdoor objeleri
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
            for _, name in pairs(commonBackdoorNames) do
                if string.find(string.lower(obj.Name), name:lower()) then
                    backdoorFound = true
                    table.insert(backdoorDetails, obj:GetFullName() .. " (" .. obj.ClassName .. ")")
                    break
                end
            end
        end
    end
    
    -- 3. ServerScriptService ve StarterPlayerScripts'te
    local services = {game:GetService("ServerScriptService"), game:GetService("StarterPlayer"):WaitForChild("StarterPlayerScripts")}
    for _, service in pairs(services) do
        for _, obj in pairs(service:GetDescendants()) do
            if obj:IsA("LocalScript") or obj:IsA("Script") then
                for _, name in pairs(commonBackdoorNames) do
                    if string.find(string.lower(obj.Name), name:lower()) then
                        backdoorFound = true
                        table.insert(backdoorDetails, obj:GetFullName())
                        break
                    end
                end
            end
        end
    end
    
    return backdoorFound, backdoorDetails
end

-- Animasyon
local function animateButton(button, targetColor, scale)
    TweenService:Create(button, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
        BackgroundColor3 = targetColor,
        Size = scale
    }):Play()
    wait(0.15)
    TweenService:Create(button, TweenInfo.new(0.1), {
        Size = button.Size
    }):Play()
end

-- Scan eventi - GERÇEK OYUN BACKDOOR TESPİTİ
ScanButton.MouseButton1Click:Connect(function()
    ScanButton.Text = "Taraniyor..."
    ScanButton.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
    
    StatusLabel.Text = "Oyun taraniyor..."
    StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
    
    local backdoorFound, details = scanGameBackdoors()
    
    wait(1.5)
    
    if backdoorFound then
        StatusLabel.Text = "Backdoor VAR"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
        StatusLabel.BackgroundColor3 = Color3.fromRGB(20, 60, 30)
        
        ScanButton.Visible = false
        RequirePanel.Visible = true
        
        -- Detayları konsola yazdir
        print("BACKDOOR BULUNDU:")
        for _, detail in pairs(details) do
            print("- " .. detail)
        end
        
    else
        StatusLabel.Text = "Backdoor yok"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        StatusLabel.BackgroundColor3 = Color3.fromRGB(60, 25, 25)
    end
    
    ScanButton.Text = "BACKDOOR BUL"
    ScanButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
end)

-- Require loader
ExecButton.MouseButton1Click:Connect(function()
    local inputText = RequireInput.Text
    if inputText == "" or not tonumber(inputText) then
        StatusLabel.Text = "Gecersiz ID"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    
    local fullCode = "require(" .. inputText .. ")"
    StatusLabel.Text = "Yukleniyor..."
    
    local success, result = pcall(function()
        loadstring(fullCode)()
    end)
    
    if success then
        StatusLabel.Text = "Yuklendi"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
        print("LOAD SUCCESS: " .. fullCode)
    else
        StatusLabel.Text = "Hata"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    end
end)

-- Kapat
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Input
RequireInput.Focused:Connect(function()
    RequireInput.TextScaled = false
    RequireInput.TextSize = 14
end)

RequireInput.FocusLost:Connect(function()
    RequireInput.TextScaled = true
end)

-- Animasyon
MainFrame.BackgroundTransparency = 1
CreditLabel.BackgroundTransparency = 1
TweenService:Create(MainFrame, TweenInfo.new(0.4), {
    BackgroundTransparency = 0
}):Play()

TweenService:Create(CreditLabel, TweenInfo.new(0.4), {
    BackgroundTransparency = 0
}):Play()

print("BACKDOOR SCANNER v3.0 yuklendi")
