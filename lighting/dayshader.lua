local Lighting = game:GetService("Lighting")

local Sky = Instance.new("Sky")
local Bloom = Instance.new("BloomEffect")
local Blur = Instance.new("BlurEffect")
local ColorC = Instance.new("ColorCorrectionEffect")
local SunRays = Instance.new("SunRaysEffect")

Lighting.Brightness = 2.25
Lighting.ExposureCompensation = 0.1
Lighting.ClockTime = 17.4

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=144933338"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=144931530"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=144933262"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=144933244"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=144933299"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=144931564"
Sky.StarCount = 5000
Sky.SunAngularSize = 5
Sky.Parent = Lighting

Bloom.Intensity = 0.2
Bloom.Size = 5
Bloom.Threshold = 1.2
Bloom.Parent = Lighting

Blur.Size = 5
Blur.Parent = Lighting

ColorC.Brightness = 0
ColorC.Contrast = 0.1
ColorC.Saturation = 0.25
ColorC.TintColor = Color3.fromRGB(255, 255, 255)
ColorC.Parent = Lighting

SunRays.Intensity = 0.1
SunRays.Spread = 0.8
SunRays.Parent = Lighting

return {Sky, Bloom, Blur, ColorC, SunRays}
