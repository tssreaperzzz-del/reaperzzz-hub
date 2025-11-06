-- REAPER HUB LOADER v4 - FIXED GUI OPEN
print("REAPER HUB: Type ;reaper in chat")

local Player = game:GetService("Players").LocalPlayer
local Loaded = false

local function Load()
    if Loaded then return end
    Loaded = true
    print("Loading REAPER HUB...")
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tssreaperzzz-del/reaperzzz-hub/main/reaperhub.lua"))()
    end)
    if not success then
        warn("FAILED: " .. err)
        Loaded = false
    end
end

Player.Chatted:Connect(function(msg)
    if msg:lower() == ";reaper" then
        Load()
    elseif msg:lower() == ";unload" then
        local gui = game:GetService("CoreGui"):FindFirstChild("REAPER HUB")
        if gui then gui:Destroy() end
        Loaded = false
        print("Unloaded. Type ;reaper to reload.")
    end
end)
AutoShow = true,
