local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local userLists = loadstring(game:HttpGet("https://raw.githubusercontent.com/notmys/MicUp/refs/heads/main/api/Nametag.lua"))()

local Owners = userLists.Owners
local CoOwner = userLists.CoOwner
local MysStaff = userLists.MysStaff
local Advertisers = userLists.Advertisers
local Helper = userLists.Helper
local Giveaway1 = userLists.Giveaway1
local RankColors = userLists.RankColors

local function modifyString(str)
    return str:gsub(" ", "")
end

local function containsIgnoreCase(tbl, name)
    name = name:lower()
    for _, v in ipairs(tbl) do
        if v:lower() == name then
            return true
        end
    end
    return false
end

local WhitelistMessages = {
    "Mys.Client On Top()",
    "Mys.Premium On Top()"
}

local WhitelistTagMap = {
    [modifyString("Mys.Client On Top()")] = "mys.client user",
    [modifyString("Mys.Premium On Top()")] = "mys.premium user"
}

spawn(function()
    while true do
        for i = 1, 10 do
            Players:Chat(modifyString(WhitelistMessages[1]))
        end
        wait(1)
    end
end)

local ChatWhitelist = {}

local CONFIG = {
    TAG_SIZE = UDim2.new(0, 120, 0, 40),
    TAG_OFFSET = Vector3.new(0, 2.4, 0),
    MAX_DISTANCE = 100,
}

local localTagVisible = true
local globalTagsVisible = true
local TagInstances = {}

local function attachTagToHead(character, player, rankText)
    if not rankText or not RankColors[rankText] then return end
    if TagInstances[player] then return end
    local head = character:FindFirstChild("Head")
    if not head then return end
    local tag = Instance.new("BillboardGui")
    tag.Adornee = head
    tag.Name = "RankTag"
    tag.Size = CONFIG.TAG_SIZE
    tag.StudsOffset = CONFIG.TAG_OFFSET
    tag.AlwaysOnTop = true
    tag.MaxDistance = CONFIG.MAX_DISTANCE

    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, 0, 1, 0)
    container.BackgroundTransparency = 0.2
    container.BackgroundColor3 = RankColors[rankText].primary
    container.BorderSizePixel = 0
    container.ClipsDescendants = true
    container.Parent = tag

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = container

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 0.6, 0)
    label.Position = UDim2.new(0, 0, 0.1, 0)
    label.BackgroundTransparency = 1
    label.Text = rankText
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextSize = 17
    label.Font = Enum.Font.SourceSansBold
    label.Parent = container

    local userLabel = Instance.new("TextLabel")
    userLabel.Size = UDim2.new(1, 0, 0.4, 0)
    userLabel.Position = UDim2.new(0, 0, 0.6, 0)
    userLabel.BackgroundTransparency = 1
    userLabel.Text = "@" .. player.Name
    userLabel.TextColor3 = RankColors[rankText].accent
    userLabel.TextSize = 10
    userLabel.Font = Enum.Font.GothamBold
    userLabel.Parent = container

    tag.Parent = game:GetService("CoreGui")
    TagInstances[player] = tag
    tag.Enabled = player == Players.LocalPlayer and localTagVisible or globalTagsVisible
end

local function createTag(player, rankText)
    if player.Character then
        attachTagToHead(player.Character, player, rankText)
    end
    player.CharacterAdded:Connect(function(character)
        attachTagToHead(character, player, rankText)
    end)
end

local function applyPlayerTag(player)
    if TagInstances[player] then return end
    local assignedTag = userLists.getRank(player.Name, ChatWhitelist)
    if assignedTag then
        createTag(player, assignedTag)
    end
end

local function setupChatListener(player)
    player.Chatted:Connect(function(msg)
        local cleaned = modifyString(msg)
        local matchedTag = WhitelistTagMap[cleaned]
        local nameLower = player.Name:lower()
        if matchedTag and not ChatWhitelist[nameLower] then
            if containsIgnoreCase(Owners, player.Name)
                or containsIgnoreCase(CoOwner, player.Name)
                or containsIgnoreCase(MysStaff, player.Name)
                or containsIgnoreCase(Advertisers, player.Name)
                or containsIgnoreCase(Helper, player.Name) then
                return
            end
            ChatWhitelist[nameLower] = true
            createTag(player, matchedTag)
        end
    end)
end

for _, player in ipairs(Players:GetPlayers()) do
    task.spawn(function()
        applyPlayerTag(player)
        setupChatListener(player)
    end)
end

Players.PlayerAdded:Connect(function(player)
    task.spawn(function()
        applyPlayerTag(player)
        setupChatListener(player)
    end)
end)

_G._mys_tags = {}
_G._mys_tags.refreshTags = function()
    for _, player in pairs(Players:GetPlayers()) do
        task.spawn(function()
            applyPlayerTag(player)
        end)
    end
end
_G._mys_tags.toggleLocalTag = function(state)
    localTagVisible = state
    local lp = Players.LocalPlayer
    if TagInstances[lp] then
        TagInstances[lp].Enabled = state
    end
end
_G._mys_tags.toggleGlobalTags = function(state)
    globalTagsVisible = state
    for player, tag in pairs(TagInstances) do
        if player ~= Players.LocalPlayer then
            tag.Enabled = state
        end
    end
end
