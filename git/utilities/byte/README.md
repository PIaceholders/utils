# Byte
module to simulate and create scripts within lua

_this was originally stripped from the :: Adonis Admin :: module_
_i took some time to separate it and make it into its own object_

[Adonis Admin](https://github.com/Epix-Incorporated/Adonis)

## Documentation
`Byte:NewScript()`
```lua
local Byte = require(path.to.Byte)

-- Example (works for server/client)
local ServerScript = Byte:NewScript(Byte.Server, "a_name_for_the_script", [[
  local a_variable, cool_part = "hello", workspace.part
  print(a_variable)

  cool_part.Color = Color3.fromRGB(200, 140, 20)
]])

ServerScript.Parent = workspace
ServerScript.Disabled = false
```

## ⚠️ Warning! ⚠️
The Lua Emulator does not account for newer lua context
Example:
```lua
-- Does not work
my_var += 1

`` Works
my_var = my_var + 1
```
