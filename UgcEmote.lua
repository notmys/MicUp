--[[
.gg/djMQRCNAAZ
- mys
Credits To Federal For The Ui ❤️
]]
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local AvatarEditorService = game:GetService("AvatarEditorService")

local G2L = {}
G2L["1"] = Instance.new("ScreenGui", Players.LocalPlayer:WaitForChild("PlayerGui"))
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["1"].ResetOnSpawn = false
G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"]["BorderSizePixel"] = 0
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 25)
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["2"]["Size"] = UDim2.new(0, 318, 0, 434)
G2L["2"]["Position"] = UDim2.new(0, 667, 0, 447)
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["2"]["Name"] = [[MainFrame]]
G2L["3"] = Instance.new("UICorner", G2L["2"])
G2L["3"]["CornerRadius"] = UDim.new(0, 7)
G2L["4"] = Instance.new("Frame", G2L["2"])
G2L["4"]["BorderSizePixel"] = 0
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 35)
G2L["4"]["Size"] = UDim2.new(0, 316, 0, 51)
G2L["4"]["Position"] = UDim2.new(0, 1, 0, 0)
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["4"]["Name"] = [[TopBar]]
G2L["5"] = Instance.new("UICorner", G2L["4"])
G2L["5"]["CornerRadius"] = UDim.new(0, 7)
G2L["6"] = Instance.new("TextLabel", G2L["4"])
G2L["6"]["BorderSizePixel"] = 0
G2L["6"]["TextSize"] = 18
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["6"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["6"]["BackgroundTransparency"] = 1
G2L["6"]["Size"] = UDim2.new(0, 200, 0, 50)
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["6"]["Text"] = [[mys ugc emotes 999+]]
G2L["6"]["Position"] = UDim2.new(0.02852, 0, 0.03846, 0)
local closeButton = Instance.new("ImageButton", G2L["4"])
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 24, 0, 24)
closeButton.Position = UDim2.new(1, -16, 0.72, -12)
closeButton.AnchorPoint = Vector2.new(1, 0.5)
closeButton.BackgroundTransparency = 1
closeButton.Image = "rbxassetid://10152135063"
closeButton.MouseEnter:Connect(function()
    closeButton.Image = "rbxassetid://104301854198764"
end)
closeButton.MouseLeave:Connect(function()
    closeButton.Image = "rbxassetid://10152135063"
end)
closeButton.MouseEnter:Connect(function()
    local hoverTween = TweenService:Create(closeButton, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(255, 0, 0)})
    hoverTween:Play()
end)
closeButton.MouseLeave:Connect(function()
    local leaveTween = TweenService:Create(closeButton, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(255, 255, 255)})
    leaveTween:Play()
end)
closeButton.MouseButton1Click:Connect(function()
    G2L["1"]:Destroy()
end)
local minimizeButton = Instance.new("ImageButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 24, 0, 34)
minimizeButton.Position = UDim2.new(1, -48, 0.72, -12)
minimizeButton.AnchorPoint = Vector2.new(1, 0.5)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Image = "rbxassetid://15396333997"
minimizeButton.Parent = G2L["4"]
minimizeButton.MouseEnter:Connect(function()
    minimizeButton.Image = "rbxassetid://15396333997"
    TweenService:Create(minimizeButton, TweenInfo.new(0.2), {
        ImageColor3 = Color3.fromRGB(57, 190, 249)
    }):Play()
end)
minimizeButton.MouseLeave:Connect(function()
    minimizeButton.Image = "rbxassetid://15396333997"
    TweenService:Create(minimizeButton, TweenInfo.new(0.2), {
        ImageColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)
local isMinimized = false
local originalSize = G2L["2"].Size
local topBar = G2L["4"]
local function toggleMinimize()
    isMinimized = not isMinimized
    for _, child in ipairs(G2L["2"]:GetChildren()) do
        if child ~= topBar and child:IsA("GuiObject") then
            child.Visible = not isMinimized
        end
    end
    local targetSize = isMinimized
        and UDim2.new(originalSize.X.Scale, originalSize.X.Offset, 0, 51)
        or originalSize
    TweenService:Create(G2L["2"], TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
        Size = targetSize
    }):Play()
end
minimizeButton.MouseButton1Click:Connect(toggleMinimize)
G2L["7"] = Instance.new("Frame", G2L["2"])
G2L["7"]["BorderSizePixel"] = 0
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 35)
G2L["7"]["Size"] = UDim2.new(0, 294, 0, 36)
G2L["7"]["Position"] = UDim2.new(0, 12, 0, 66)
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["7"]["Name"] = [[Search]]
G2L["8"] = Instance.new("UICorner", G2L["7"])
G2L["8"]["CornerRadius"] = UDim.new(0, 4)
G2L["9"] = Instance.new("UIStroke", G2L["7"])
G2L["9"]["Transparency"] = 0.23
G2L["9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
G2L["9"]["Thickness"] = 0.7
G2L["9"]["Color"] = Color3.fromRGB(58, 58, 58)
G2L["a"] = Instance.new("TextBox", G2L["7"])
G2L["a"]["CursorPosition"] = -1
G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["a"]["BorderSizePixel"] = 0
G2L["a"]["TextSize"] = 15
G2L["a"]["TextColor3"] = Color3.fromRGB(136, 136, 136)
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["a"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
G2L["a"]["Size"] = UDim2.new(0, 183, 0, 29)
G2L["a"]["Position"] = UDim2.new(0.14286, 0, 0.08333, 0)
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["a"].PlaceholderText = "Search animations..."
G2L["a"].PlaceholderColor3 = Color3.fromRGB(136, 136, 136)
G2L["a"]["Text"] = [[Search animations...]]
G2L["a"]["BackgroundTransparency"] = 1
G2L["b"] = Instance.new("ImageLabel", G2L["7"])
G2L["b"]["BorderSizePixel"] = 0
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["b"]["Image"] = [[http://www.roblox.com/asset/?id=5107220207]]
G2L["b"]["Size"] = UDim2.new(0, 15, 0, 15)
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["b"]["BackgroundTransparency"] = 1
G2L["b"]["Position"] = UDim2.new(0.04422, 0, 0.27778, 0)
G2L["c"] = Instance.new("TextButton", G2L["7"])
G2L["c"]["BorderSizePixel"] = 0
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["c"]["TextSize"] = 17
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(57, 190, 249)
G2L["c"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
G2L["c"]["Size"] = UDim2.new(0, 62, 0, 36)
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["c"]["Text"] = [[Add]]
G2L["c"]["Position"] = UDim2.new(0.78912, 0, 0, 0)
G2L["d"] = Instance.new("UICorner", G2L["c"])
G2L["d"]["CornerRadius"] = UDim.new(0, 4)
G2L["e"] = Instance.new("Frame", G2L["2"])
G2L["e"]["BorderSizePixel"] = 0
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 35)
G2L["e"]["Size"] = UDim2.new(0, 294, 0, 288)
G2L["e"]["Position"] = UDim2.new(0, 12, 0, 118)
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["e"]["Name"] = [[Buttons]]
G2L["f"] = Instance.new("UICorner", G2L["e"])
G2L["f"]["CornerRadius"] = UDim.new(0, 4)
G2L["10"] = Instance.new("UIStroke", G2L["e"])
G2L["10"]["Transparency"] = 0.23
G2L["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
G2L["10"]["Thickness"] = 0.7
G2L["10"]["Color"] = Color3.fromRGB(58, 58, 58)
local function createAddEmoteGUI(parentGUI, refreshCallback)
    local addEmoteGUI = Instance.new("ScreenGui", Players.LocalPlayer:WaitForChild("PlayerGui"))
    addEmoteGUI.Name = "AddEmoteGUI"
    addEmoteGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    addEmoteGUI.ResetOnSpawn = false
    local addEmoteFrame = Instance.new("Frame", addEmoteGUI)
    addEmoteFrame.Name = "AddEmote"
    addEmoteFrame.BorderSizePixel = 0
    addEmoteFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 36)
    addEmoteFrame.Size = UDim2.new(0, 235, 0, 138)
    addEmoteFrame.Position = UDim2.new(0.5, -117.5, 0.5, -69)
    addEmoteFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    addEmoteFrame.Visible = false
    local dragging = false
    local dragInput
    local dragStart
    local startPos
    local function Lerp(a, b, m)
        return a + (b - a) * m
    end
    local lastMousePos
    local lastGoalPos
    local dragspeed = 15
    local function Update(dt)
        if not startPos then return end
        if not dragging and lastGoalPos then
            addEmoteFrame.Position = UDim2.new(
                startPos.X.Scale, Lerp(addEmoteFrame.Position.X.Offset, lastGoalPos.X.Offset, dt * dragspeed),
                startPos.Y.Scale, Lerp(addEmoteFrame.Position.Y.Offset, lastGoalPos.Y.Offset, dt * dragspeed)
            )
            return
        end
        local delta = lastMousePos - UserInputService:GetMouseLocation()
        local xGoal = startPos.X.Offset - delta.X
        local yGoal = startPos.Y.Offset - delta.Y
        lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
        addEmoteFrame.Position = UDim2.new(
            startPos.X.Scale, Lerp(addEmoteFrame.Position.X.Offset, xGoal, dt * dragspeed),
            startPos.Y.Scale, Lerp(addEmoteFrame.Position.Y.Offset, yGoal, dt * dragspeed)
        )
    end
    addEmoteFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = addEmoteFrame.Position
            lastMousePos = UserInputService:GetMouseLocation()
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    addEmoteFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    RunService.Heartbeat:Connect(Update)
    local emoteCorner = Instance.new("UICorner", addEmoteFrame)
    emoteCorner.CornerRadius = UDim.new(0, 4)
    local emoteStroke = Instance.new("UIStroke", addEmoteFrame)
    emoteStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    emoteStroke.Thickness = 0.7
    emoteStroke.Color = Color3.fromRGB(59, 59, 59)
    local animNameBox = Instance.new("TextBox", addEmoteFrame)
    animNameBox.Name = "AnimName"
    animNameBox.CursorPosition = -1
    animNameBox.PlaceholderColor3 = Color3.fromRGB(119, 119, 119)
    animNameBox.BorderSizePixel = 0
    animNameBox.TextSize = 14
    animNameBox.TextColor3 = Color3.fromRGB(179, 179, 179)
    animNameBox.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
    animNameBox.FontFace = Font.new("rbxassetid://12187365977", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    animNameBox.PlaceholderText = "Animation Name"
    animNameBox.Size = UDim2.new(0, 211, 0, 30)
    animNameBox.Position = UDim2.new(0.05106, 0, 0.08642, 0)
    animNameBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    animNameBox.Text = ""
    local nameBoxCorner = Instance.new("UICorner", animNameBox)
    nameBoxCorner.CornerRadius = UDim.new(0, 2)
    local nameBoxStroke = Instance.new("UIStroke", animNameBox)
    nameBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    nameBoxStroke.Thickness = 0.7
    nameBoxStroke.Color = Color3.fromRGB(59, 59, 59)
    local animIdBox = Instance.new("TextBox", addEmoteFrame)
    animIdBox.Name = "AnimID"
    animIdBox.CursorPosition = -1
    animIdBox.PlaceholderColor3 = Color3.fromRGB(119, 119, 119)
    animIdBox.BorderSizePixel = 0
    animIdBox.TextSize = 14
    animIdBox.TextColor3 = Color3.fromRGB(179, 179, 179)
    animIdBox.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
    animIdBox.FontFace = Font.new("rbxassetid://12187365977", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    animIdBox.PlaceholderText = "Animation ID"
    animIdBox.Size = UDim2.new(0, 211, 0, 30)
    animIdBox.Position = UDim2.new(0.05106, 0, 0.38808, 0)
    animIdBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    animIdBox.Text = ""
    local idBoxCorner = Instance.new("UICorner", animIdBox)
    idBoxCorner.CornerRadius = UDim.new(0, 2)
    local idBoxStroke = Instance.new("UIStroke", animIdBox)
    idBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    idBoxStroke.Thickness = 0.7
    idBoxStroke.Color = Color3.fromRGB(59, 59, 59)
    local confirmButton = Instance.new("TextButton", addEmoteFrame)
    confirmButton.Name = "Confirm"
    confirmButton.BorderSizePixel = 0
    confirmButton.TextColor3 = Color3.fromRGB(187, 187, 187)
    confirmButton.TextSize = 15
    confirmButton.BackgroundColor3 = Color3.fromRGB(43, 43, 48)
    confirmButton.FontFace = Font.new("rbxassetid://12187365977", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    confirmButton.Size = UDim2.new(0, 210, 0, 29)
    confirmButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    confirmButton.Text = "Confirm"
    confirmButton.Position = UDim2.new(0.05106, 0, 0.7029, 0)
    local confirmCorner = Instance.new("UICorner", confirmButton)
    confirmCorner.CornerRadius = UDim.new(0, 4)
    local confirmStroke = Instance.new("UIStroke", confirmButton)
    confirmStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    confirmStroke.Thickness = 0.7
    confirmStroke.Color = Color3.fromRGB(59, 59, 59)
    confirmButton.MouseButton1Click:Connect(function()
        local name = animNameBox.Text
        local id = animIdBox.Text
        if name ~= "" and id ~= "" then
            table.insert(emotes, {name, id, false})
            table.sort(emotes, function(a, b) return a[1]:lower() < b[1]:lower() end)
            refreshCallback()
            addEmoteFrame.Visible = false
        end
    end)
    local function toggleAddEmoteGUI()
        addEmoteFrame.Visible = not addEmoteFrame.Visible
        if addEmoteFrame.Visible then
            animNameBox.Text = ""
            animIdBox.Text = ""
        end
    end
    return {
        GUI = addEmoteGUI,
        toggle = toggleAddEmoteGUI
    }
end

local function PlayEmote(name, id)
    local LocalPlayer = Players.LocalPlayer
    local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    local Description = Humanoid and Humanoid:FindFirstChildOfClass("HumanoidDescription")
    if not Humanoid or not Description then return end
    local success, animTrack = pcall(function()
        return Humanoid:PlayEmoteAndGetAnimTrackById(id)
    end)

    if not success or not animTrack then
        Description:AddEmote(name, id)
        animTrack = Humanoid:PlayEmoteAndGetAnimTrackById(id)
    end
end
local AvatarEditorService = game:GetService("AvatarEditorService")

local params = CatalogSearchParams.new()
params.AssetTypes = {Enum.AvatarAssetType.EmoteAnimation}
params.SortType = Enum.CatalogSortType.RecentlyCreated
params.SortAggregation = Enum.CatalogSortAggregation.AllTime
params.IncludeOffSale = true
params.Limit = 120
local function getCatalogPage()
    local success, catalogPage = pcall(function()
        return AvatarEditorService:SearchCatalog(params)
    end)
    if not success then
        task.wait(0.5)
        return getCatalogPage()
    end
    return catalogPage
end
local catalogPage = getCatalogPage()
local filteredResults = {}
for _, item in ipairs(catalogPage) do
    if item.Creator.Name ~= "Roblox" then
        table.insert(filteredResults, item)
    end
end
local catalogPage = getCatalogPage()
local pages = {}
while true do
    local currentPage = catalogPage:GetCurrentPage()
    table.insert(pages, currentPage)
    if catalogPage.IsFinished then
        break
    end
    local function AdvanceToNextPage()
        local success = pcall(function()
            catalogPage:AdvanceToNextPageAsync()
        end)
        if not success then
            task.wait(5)
            return AdvanceToNextPage()
        end
    end
    AdvanceToNextPage()
end
local emotes = {}
for _, page in pairs(pages) do
    for _, emote in pairs(page) do
        table.insert(emotes, {emote.Name, emote.Id, false})
    end
end
table.insert(emotes, {"Arm Wave", 5915773155, false})
table.insert(emotes, {"Head Banging", 5915779725, false})
table.insert(emotes, {"Face Calisthenics", 9830731012, false})
local function addButtonsToFrame()
    local parent = G2L["e"]
    parent:ClearAllChildren()
    local scrollingFrame = Instance.new("ScrollingFrame", parent)
    scrollingFrame.Name = "EmoteScrollingFrame"
    scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 2010)
    scrollingFrame.ScrollBarThickness = 5
    scrollingFrame.BackgroundTransparency = 1
    scrollingFrame.ClipsDescendants = true
    local yOffset = 10
    table.sort(emotes, function(a, b)
        return a[1]:lower() < b[1]:lower()
    end)
    local buttons = {}
    for _, emote in ipairs(emotes) do
        local emoteName = emote[1]
        local emoteId = emote[2]
        local keyBox = Instance.new("TextBox", scrollingFrame)
        keyBox.Name = "KeybindBox"
        keyBox.Size = UDim2.new(0, 32, 0, 32)
        keyBox.Position = UDim2.new(0, 12, 0, yOffset)
        keyBox.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
        keyBox.Text = ""
        keyBox.TextSize = 14
        keyBox.Font = Enum.Font.GothamSemibold
        keyBox.TextColor3 = Color3.fromRGB(179, 179, 179)
        keyBox.BorderSizePixel = 0
        keyBox.ClearTextOnFocus = false
        keyBox.PlaceholderText = "..."
        keyBox.TextXAlignment = Enum.TextXAlignment.Center
        keyBox.ZIndex = 2
        local keyCorner = Instance.new("UICorner", keyBox)
        keyCorner.CornerRadius = UDim.new(0, 4)
        local keyStroke = Instance.new("UIStroke", keyBox)
        keyStroke.Transparency = 0.23
        keyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        keyStroke.Thickness = 0.7
        keyStroke.Color = Color3.fromRGB(58, 58, 58)
        local button = Instance.new("TextButton", scrollingFrame)
        button.Name = emoteName
        button.Size = UDim2.new(1, -68, 0, 32)
        button.Position = UDim2.new(0, 52, 0, yOffset)
        button.BackgroundColor3 = Color3.fromRGB(31, 31, 35)
        button.Text = emoteName
        button.TextSize = 17
        button.Font = Enum.Font.GothamSemibold
        button.TextColor3 = Color3.fromRGB(244, 244, 244)
        button.BorderSizePixel = 0
        button.AutoButtonColor = true
        button.ZIndex = 2
        local buttonStroke = Instance.new("UIStroke", button)
        buttonStroke.Transparency = 0.23
        buttonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        buttonStroke.Thickness = 0.7
        buttonStroke.Color = Color3.fromRGB(58, 58, 58)
        local buttonCorner = Instance.new("UICorner", button)
        buttonCorner.CornerRadius = UDim.new(0, 4)
        local normalColor = Color3.fromRGB(31, 31, 35)
        local hoverColor = Color3.fromRGB(40, 40, 45)
        local clickColor = Color3.fromRGB(57, 190, 249)
        button.MouseEnter:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = hoverColor}):Play()
        end)
        button.MouseLeave:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = normalColor}):Play()
        end)
        button.MouseButton1Down:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {BackgroundColor3 = clickColor}):Play()
        end)
        button.MouseButton1Up:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {BackgroundColor3 = hoverColor}):Play()
        end)
        button.MouseButton1Click:Connect(function()
            PlayEmote(emoteName, emoteId)
        end)
        table.insert(buttons, {button = button, keyBox = keyBox})
        yOffset = yOffset + 40
    end
    local searchBox = G2L["a"]
    local conn5 = searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        local searchText = searchBox.Text:lower()
        if searchText == "search animations..." then
            searchText = ""
        end
        yOffset = 10
        for _, pair in ipairs(buttons) do
            local button = pair.button
            local keyBox = pair.keyBox
            if button.Name:lower():find(searchText) or searchText == "" then
                button.Visible = true
                keyBox.Visible = true
                button.Position = UDim2.new(0, 52, 0, yOffset)
                keyBox.Position = UDim2.new(0, 12, 0, yOffset)
                yOffset = yOffset + 40
            else
                button.Visible = false
                keyBox.Visible = false
            end
        end
        scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, yOffset)
    end)
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, yOffset)
end
local dragFrame = G2L["4"]
local mainFrame = G2L["2"]
local dragging = false
local dragInput, dragStart, startPos
local dragTween
local initialOffset
dragFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and not isDraggingSlider then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        initialOffset = startPos - UDim2.new(0, input.Position.X, 0, input.Position.Y)
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
dragFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging and not isDraggingSlider then
        if not dragStart or not startPos then
            dragging = false
            return
        end
        local newPos = UDim2.new(
            0, input.Position.X + initialOffset.X.Offset,
            0, input.Position.Y + initialOffset.Y.Offset
        )
        if dragTween then dragTween:Cancel() end
        dragTween = TweenService:Create(
            mainFrame,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = newPos}
        )
        dragTween:Play()
    end
end)
local guiVisible = true
local toggleKey = Enum.KeyCode.P 
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == toggleKey then
        guiVisible = not guiVisible
        G2L["1"].Enabled = guiVisible
    end
end)
local function PlayEmote(name, id)
    local LocalPlayer = Players.LocalPlayer
    local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    local Description = Humanoid and Humanoid:FindFirstChildOfClass("HumanoidDescription")
    if not Humanoid or not Description then return end
    local succ, err = pcall(function()
        Humanoid:PlayEmoteAndGetAnimTrackById(id)
    end)
    if not succ then
        Description:AddEmote(name, id)
        Humanoid:PlayEmoteAndGetAnimTrackById(id)
    end
end
addButtonsToFrame()
local addGUI = createAddEmoteGUI(G2L["1"], addButtonsToFrame)
G2L["c"].MouseButton1Click:Connect(function()
    addGUI.toggle()
end)
return G2L["1"]
