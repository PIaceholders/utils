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

XTween returns a function to start the tween
`:Play()`

you can save the function to be used later by defining xtween to a variable
```lua
local tween = xtween({ ... })
tween:Play()
```
