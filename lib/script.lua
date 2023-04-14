-- Enable secure mode to prevent the game from detecting it easily.
getgenv().SecureMode = true

-- Load the Rayfield library from a GitHub source
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/elonof/CheatCatalyst/main/lib/UI'))()

-- Create a window using Rayfield library
local Window = Rayfield:CreateWindow({
   Name = "CheatCatalyst | v1.0", -- Window name
   LoadingTitle = "CheatCatalyst", -- Loading screen title
   LoadingSubtitle = "Start your scripting journey!", -- Loading screen subtitle
   ConfigurationSaving = {
      Enabled = true, -- Enable configuration saving
      FolderName = "CheatCatalyst", -- Name of folder where the config will be saved
      FileName = "HandlerC" -- Name of the configuration file
   },
   Discord = {
      Enabled = false, -- Disable Discord integration
      Invite = "noinvitelink", -- Discord invite code
      RememberJoins = true -- Remember Discord join status
   },
   KeySystem = false, -- Disable key system
   KeySettings = {
      Title = "Error", -- This shouldn't show but if it does then type "asd"
      Subtitle = "Something went wrong!", -- This shouldn't show but if it does then type "asd"
      Note = "If you see this, the key is: asd", -- This shouldn't show but if it does then type "asd"
      FileName = "ErrorKey", -- This shouldn't show but if it does then type "asd"
      SaveKey = true, --- This shouldn't show but if it does then type "asd"
      GrabKeyFromSite = false, -- This shouldn't show but if it does then type "asd"
      Key = {"asd"} -- This shouldn't show but if it does then type "asd"
   }
})

-- Create a tab for Reverse-Engineering | GAME
local Tab = Window:CreateTab("Reverse-Engineering | GAME")

-- Create a section for Explorers
local Section = Tab:CreateSection("Explorers")

-- Create a button for DEX V3 bypassed
local Button = Tab:CreateButton({
   Name = "DEX V3 | Bypassed",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
   end,
})

-- Create a button for New Dex bypassed
local Button = Tab:CreateButton({
   Name = "New Dex | Bypassed",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/LorekeeperZinnia/Dex/master/main.lua"))()
   end,
})

-- Create a section for Remote Spy
local Section = Tab:CreateSection("Remote Spy")

-- Create a button for engospy with RightAlt keybind
local Button = Tab:CreateButton({
   Name = "engospy | RightAlt",
   Callback = function()
   local settings = {
   saveCalls = true, -- Save remote calls
   maxCallsSaved = 1000, -- Maximum number of saved remote calls
   saveOnlyLastCall = true, -- Only save the last remote call
   maxTableDepth = 100, -- Maximum table depth
   minimizeBind = Enum.KeyCode.RightAlt, -- Keybind to minimize
   newFunctionMethod = true, -- Use a new function method
   blacklistedNames = {} -- Blacklisted remote function names
   }
   
   loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/engospy/main/source.lua"))(settings)
   end,
})

-- Create a section for Third Party Scripts
local Section = Tab:CreateSection("Third Party Scripts")

-- Create a button to load Infinite Yield
local Button = Tab:CreateButton({
Name = "Infinite Yield",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end,
})

-- Create a section for Saves
local Section = Tab:CreateSection("Saves")

-- Create an input field for saving text
local Input = Tab:CreateInput({
Name = "Save",
PlaceholderText = "this will save to 'Tabs'",
RemoveTextAfterFocusLost = false,
Callback = function(Text)
-- Create a button to save the text to clipboard
local Button = Tab:CreateButton({
Name = "Saved | "..Text,
Callback = function()
setclipboard(Text)
end,
})
end,
})

-- Create a second tab for Reverse-Engineering | SCRIPT
local Tab2 = Window:CreateTab("Reverse-Engineering | SCRIPT")

-- Create a section for Analyzers
local Section = Tab2:CreateSection("Analyzers")

-- Create a button to load HttpSpy
local Button = Tab2:CreateButton({
Name = "HttpSpy | HTTP Requests",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NotDSF/HttpSpy/main/init.lua"))({
AutoDecode = true, -- Automatically decodes JSON
Highlighting = true, -- Highlights the output
SaveLogs = true, -- Save logs to a text file
CLICommands = true, -- Allows you to input commands into the console
ShowResponse = true, -- Shows the request response
API = true, -- Enables the script API
BlockedURLs = {} -- Blocked urls
});
end,
})

-- Create a button to load Script Analyzer
local Button = Tab2:CreateButton({
Name = "Script Analyzer | Script Functions",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/debug420/rbx-script-analyzer/main/Script-Analyzer.lua"))()
end,
})

-- Load configuration
Rayfield:LoadConfiguration()
