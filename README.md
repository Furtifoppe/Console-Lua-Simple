# Console-Lua-Simple
Lua console Log Easy

Here is a short explanation of everything that is modifiable in the code.

For all the colours I use Escape Character which is implemented directly on the Lua and is very useful for the colours, spaces, etc.
```lua

_G.colors = {

    red = "\27[31m",
    Blue = "\27[34m",
    Green = "\27[32m"
-- Exemple Colors: 
   Exemple = "\24[37m" -- White
} 
```
For the console customisation part you can add Values as shown in the example.
```lua
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
-- You can add Values such as :
         exemple = {
            valeur = "[EXEMPLE]"
        },
    },
```
As for the customisation of the colours, just follow the example and you will understand the system quite quickly.
```lua
    console_colors = {
        rouge = {
            colorName = _G.colors.red
        },
        bleu = {
            colorName = _G.colors.Blue
        },
        vert = {
            colorName = _G.colors.Green
        },
-- Exemple Add Colors:
       exemple = {
            colorName = _G.colors.Exemple -- I take the colour I created at the very beginning
        }
```

The script will be modified and improved in time so take a look at it sometimes.
