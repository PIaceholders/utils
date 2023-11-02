# Email Verification
Module to check if email is legitimate

* this is utterly pointless for roblox because no game needs to have to verify an email

```lua
local email = require(path.to.emailverification)
local legit: Boolean = email:Check("email@example.com") -- > returns true/false, if false, the email may be a disposable / burner email

print(legit) -- > true / false
```

* there is another variable returned from the check function
```lua
local email = require(path.to.emailverification)
local legit, response = email:Check("email@example.com")

if legit then
    print("this email is a legitimate email")
else
    if type(response) == "table" then
        print("this email is disposable")
    else
        -- a server issue
        warn(`an error occured while checking the email. response: {response}`)
    end
end
```
