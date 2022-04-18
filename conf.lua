-- Les couleurs [info: J'utilise les Escape Character] --
-- The colours [info: I use Escape Character] --

_G.colors = {

    red = "\27[31m",
    Blue = "\27[34m",
    Green = "\27[32m"

}

--[[
color = [vert, rouge, bleu] sur String
timer = true ou false sur Boolean
types = [info, log, error] sur String

color = [vert, rouge, bleu] on String
timer = true or false on Boolean
types = [info, log, error] on String
]]

function Conf(color, types, text, timer) 


    if timer == true then
        timer = "["..os.date("%X").."]"
    elseif timer == false then
        timer = ""
    end
 
    if color == "rouge" then
        color = _G.colors.red
    elseif color == "vert" then
        color = _G.colors.Green
    elseif color == "bleu" then
        color = _G.colors.Blue
    end

    if types == "info" then
    types="[INFO]"
    elseif types == "log" then
    types="[LOG]"
    elseif types == "error" then
    types="[ERROR]"
    end

    print(color..timer..types..text)

end


