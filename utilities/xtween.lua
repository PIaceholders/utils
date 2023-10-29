local TweenService = game:GetService("TweenService")

-- @D0omspire
-- 10/28/23

return function(group)
	local tweens = {}
	
	for index, struct in group do
		local object: Instance = struct[1]
		local tweeninfo: TweenInfo = struct[2]
		local goals = struct[3]
		
		local opt_delay = (struct[4] ~= nil and type(struct[4]) == "number" and struct[4]) or 0
		
		local tween_struct = {
			_tween = TweenService:Create(object, tweeninfo, goals),
			_delay = opt_delay
		}
		
		table.insert(tweens, tween_struct)
	end
	
	local meta = {}
	
	function meta:Play()
		for index, struct in tweens do
			local function play()
				struct._tween:Play()
			end
			
			task.delay(struct._delay, play)
		end
	end
	
	return meta
end
