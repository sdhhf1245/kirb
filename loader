local placeid = game.PlaceId



local games = {
    ["8204899140"] = "https://raw.githubusercontent.com/sdhhf1245/kirb/main/ff2.lua",
    ["8206123457"] = "https://raw.githubusercontent.com/sdhhf1245/kirb/main/ff2practice.lua",
}


function LoadGameScript(scriptURL)
    local success, script = pcall(function()
        return loadstring(game:HttpGet(scriptURL))
    end)

    if success and script then
        script()
    else
        warn("error with, report to @sdhhf: " .. scriptURL)
    end
end


local scriptURL = games[tostring(placeid)]
if scriptURL then
    LoadGameScript(scriptURL)
else
    warn("unsupported game")
end
