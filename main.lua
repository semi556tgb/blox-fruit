-- Initialize the library (same as before)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Roblox-UI-Libs/main/1%20Tokyo%20Lib%20(FIXED)/Tokyo%20Lib%20Source.lua"))({
    cheatname = "Title Here", -- watermark text
    gamename = "Title Here", -- watermark text
})
library:init()

-- Load scripts from GitHub
local tabsLua = game:HttpGet("https://raw.githubusercontent.com/yourusername/my-roblox-scripts/main/tabs.lua")
local uiLua = game:HttpGet("https://raw.githubusercontent.com/yourusername/my-roblox-scripts/main/ui.lua")
local settingsLua = game:HttpGet("https://raw.githubusercontent.com/yourusername/my-roblox-scripts/main/settings.lua")

-- Execute the Lua code
local tabs = loadstring(tabsLua)()
local ui = loadstring(uiLua)()
local settings = loadstring(settingsLua)()

-- Initialize the UI
tabs.createTabs(library)
ui.createUIComponents(library)
settings.setupSettings(library)
