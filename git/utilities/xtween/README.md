# XTween
XTween is a simple module to handle multiple tweens all at once
(I only use to to format my code more evenly)

```lua
local xtween = require(path.to.xtween)

local info = TweenInfo.new(0.5, Enum.EasingStyle.Sine)
xtween({
  {UI.Background, info, { BackgroundTransparency = 0 }},
  {UI.Background.Title, info, { TextTransparency = 0 }, 0.5}
}):Play()
```

# Arguments
XTween takes a table with tables
the sub-tables have arguments

* arg #1: `Instance`
* arg #2: `TweenInfo`
* arg #3: `Goals` (table w/ properties)
* arg #4 (OPTIONAL): `delay in seconds` before tween starts
