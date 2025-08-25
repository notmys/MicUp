local RolesByUserId = {
    [9247735263] = "Owner",
    [7646924628] = "Owner",
    --[] = "Staff",
    [5204467582] = "Admin",
    [8432632970] = "Admin"
}

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local role = RolesByUserId[player.UserId]

if role then
    createStatusLabel("Label1", role .. " " .. (role == "Owner" and "👑" or role == "Staff" and "🛡️" or "🛠️"),
        "You're " .. role .. " of $ilence.Wtf Welcome " .. player.DisplayName)
end
