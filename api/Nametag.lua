-- RoleTags.lua
local function containsIgnoreCase(tbl, name)
    name = name:lower()
    for _, v in ipairs(tbl) do
        if v:lower() == name then
            return true
        end
    end
    return false
end

local Owners = {"01xMYS", "Strixxsy"}
local CoOwner = {}
local MysStaff = {}
local Advertisers = {}
local Helper = {}
local Giveaway1 = {"Dupersigmadupe"}

local RankColors = {
    ["mys.owner"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(255, 0, 0) },
    ["mys.co-owner"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(138, 43, 226) },
    ["mys.staff"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(255, 252, 132) },
    ["mys.advertiser"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(255, 69, 0) },
    ["mys.900"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(0, 150, 209) },
    ["mys.helper"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(169, 169, 169) },
    ["mys.client user"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(102, 0, 255) },
    ["mys.premium user"] = { primary = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(16, 139, 211) }
}

local function getRank(playerName, chatWhitelist)
    if containsIgnoreCase(Owners, playerName) then
        return "mys.owner"
    elseif containsIgnoreCase(CoOwner, playerName) then
        return "mys.co-owner"
    elseif containsIgnoreCase(MysStaff, playerName) then
        return "mys.staff"
    elseif containsIgnoreCase(Advertisers, playerName) then
        return "mys.advertiser"
    elseif containsIgnoreCase(Helper, playerName) then
        return "mys.helper"
    elseif containsIgnoreCase(Giveaway1, playerName) then
        return "mys.900"
    elseif chatWhitelist[playerName:lower()] then
        return "mys.client user"
    end
end

return {
    Owners = Owners,
    CoOwner = CoOwner,
    MysStaff = MysStaff,
    Advertisers = Advertisers,
    Helper = Helper,
    Giveaway1 = Giveaway1,
    RankColors = RankColors,
    getRank = getRank
}
