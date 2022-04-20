-- Les couleurs [info: J'utilise les Escape Character]  --
-- The colours [info: I use Escape Character] --

_G.colors = {

    red = "\27[31m",
    Blue = "\27[34m",
    Green = "\27[32m"

}

--[[ CONFIGURATION CONSOLE ]]
_G.config = {

    console_custom = {
        info = {
            valeur = "[INFO]"
        },
        log = {
            valeur = "[LOG]"
        },
        erreur = {
            valeur = "[ERROR]"
        },
    },

    console_colors = {
        rouge = {
            colorName = _G.colors.red
        },
        bleu = {
            colorName = _G.colors.Blue
        },
        vert = {
            colorName = _G.colors.Green
        }
    }

}
-- -------------------------------  --

-- Script --

function Error(message)

    if message == nil then
        message = "An error has occurred."
    end
    
 return print(_G.colors.red.."[ERROR_CONSOLE]"..message)

end

function Conf(color, types, text, timer) 


    if timer == true then
        timer = "["..os.date("%X").."]"
    elseif timer == false then
        timer = ""
    end
 
    for colorCustom, value in pairs(_G.config.console_colors) do
        
        if color == colorCustom then

            color = value.colorName
        
        else if (color == nil) then
            
            color = Error("An error has occurred [color]")

        end

    end
end
    
    for TypesCustom, value in pairs(_G.config.console_custom) do

    if types == TypesCustom then
        types = value.valeur

    else if (types == nil) then

        types = Error("An error has occurred [type]")
    end
end
end


  
if not types then
    return;
end

if not color then
    return;
end

    print(color..timer..types..text)

end


