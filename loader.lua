-- REAPER HUB LOADER - Opens with ;reaper in chat (LIKE REDZ HUB)

local Loaded = false

local function LoadReaperHub()
    if Loaded then return end
    Loaded = true
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tssreaperzzz-del/reaperzzz-hub/main/reaperhub.lua"))()
    end)
    if not success then
        warn("REAPER HUB FAILED: " .. err)
    end
end

-- Listen for ;reaper
game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ";reaper" then
        LoadReaperHub()
    end
end)

print("Type ;reaper in chat to open REAPER HUB")
if msg:lower() == ";unload" then
    game:GetService("CoreGui"):FindFirstChild("REAPER HUB")?.Destroy()
    Loaded = false
    print("REAPER HUB unloaded")
end
