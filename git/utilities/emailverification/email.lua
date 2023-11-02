local EmailVerification = {}

local Http = game:GetService("HttpService")
local API_URL = "https://www.disify.com/api/email/"

function EmailVerification:_createRequest(url)
	local Response_Json
	local Success, Failed = pcall(function()
		Response_Json = Http:GetAsync(url)
	end)
	
	if Failed then
		return nil, warn(Failed)
	end
	
	if Success then
		local Data
		Success, Failed = pcall(function()
			Data = Http:JSONDecode(Response_Json)
		end)
		
		if Success then
			return Data
		end
		
		warn(Failed)
	end
end

function EmailVerification:Check(email: string)
	local Content = EmailVerification:_createRequest(`{API_URL}{email}`)
	if not Content then return false, "API Error" end
	
	if Content.disposable == false and Content.whitelist == true then
		return true, Content
	end
	
	return false, Content
end

return EmailVerification