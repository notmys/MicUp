local RolesByUserId = {
    [9247735263] = "Owner",
    [7646924628] = "Owner",
   -- [7646924628] = "Staff",
    [5204467582] = "Admin",
    [8432632970] = "Admin"
}

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local role = RolesByUserId[player.UserId]

if role then
    local labelTitle = role .. " " .. (role == "Owner" and "👑" or role == "Staff" and "🛡️" or "🛠️")
    local labelDescription = "You're " .. role .. " of $ilence.Wtf Welcome " .. player.DisplayName
    createStatusLabel("Label1", labelTitle, labelDescription)
end
