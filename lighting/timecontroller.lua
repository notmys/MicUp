local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local targetTime = 17.4
local smoothingSpeed = 5
local timeChanging = false

local function shortestDiff(current, target)
    local diff = target - current
    if diff > 12 then
        diff = diff - 24
    elseif diff < -12 then
        diff = diff + 24
    end
    return diff
end

RunService.RenderStepped:Connect(function(dt)
    if not timeChanging then return end

    local diff = shortestDiff(Lighting.ClockTime, targetTime)

    if math.abs(diff) < 0.01 then
        Lighting.ClockTime = targetTime
        timeChanging = false
    else
        Lighting.ClockTime = (Lighting.ClockTime + diff * math.clamp(dt * smoothingSpeed, 0, 1)) % 24
    end
end)

local module = {}
module.defaultTime = targetTime
module.setTargetTime = function(value)
    targetTime = value
    timeChanging = true
end

return module
