local Lighting = game:GetService("Lighting")

local Sky = Instance.new("Sky")
local Bloom = Instance.new("BloomEffect")
local Blur = Instance.new("BlurEffect")
local ColorC = Instance.new("ColorCorrectionEffect")
local Atmosphere = Instance.new("Atmosphere")

Lighting.Brightness = 1.2
Lighting.ExposureCompensation = -0.3
Lighting.ClockTime = 23.5

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151156588"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151156602"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151156616"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151156631"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151156645"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151156658"
Sky.StarCount = 6000
Sky.SunAngularSize = 0
Sky.MoonAngularSize = 11
Sky.Parent = Lighting

Bloom.Intensity = 0.15
Bloom.Size = 12
Bloom.Threshold = 0.9
Bloom.Parent = Lighting

Blur.Size = 3
Blur.Parent = Lighting

ColorC.Brightness = -0.05
ColorC.Contrast = 0.15
ColorC.Saturation = 0.3
ColorC.TintColor = Color3.fromRGB(160, 120, 200)
ColorC.Parent = Lighting

Atmosphere.Density = 0.35
Atmosphere.Offset = 0.25
Atmosphere.Color = Color3.fromRGB(90, 60, 120)
Atmosphere.Decay = Color3.fromRGB(20, 10, 30)
Atmosphere.Glare = 0.2
Atmosphere.Haze = 1
Atmosphere.Parent = Lighting

return {Sky, Bloom, Blur, ColorC, Atmosphere}
