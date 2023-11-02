# Email Verification
Module to check if email is legitimate

* this is utterly pointless for roblox because no game needs to have to verify an email

```lua
local email = require(path.to.emailverification)
local legit: Boolean, response = email:Check("email@example.com") -- > returns true/false, if false, the email may be a disposable / burner email

print(legit) -- > true / false
print(raw_response) -- > returns error message OR if successful, the parsed json table
```
