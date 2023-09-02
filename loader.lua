local req = (type(syn) == "table" and syn.request) or (type(http) == "table" and http.request) or (type(fluxus) == "table" and fluxus.request) or http_request or request 

if req~=nil then
pcall(function()
req({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = "wiigen"
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
end)
end

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
