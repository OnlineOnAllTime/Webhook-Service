

local module = {}

module.CreateMessage = function(message,url)
	local http = game:GetService("HttpService")

	local data = {
		["content"] = message
	}
	local finaldata = http:JSONEncode(data)

	local success, err = pcall(function()
		http:PostAsync(url, finaldata, Enum.HttpContentType.ApplicationJson)
	end)

	if not success then
		warn("Failed to send webhook request: " .. tostring(err))
	end
end
module.CreateEmbed = function(Player, title, description, arg1, arg2, url,image)
	local http = game:GetService("HttpService")

	local data = {
		['embeds'] = {{
			['title'] = title,
			
			["image"] = {["url"] = image},
			['description'] = description,
			['color'] = 15418782, 
			['url'] = "https://www.youtube.com/watch?v=b2iGRrTBWrs",
			['fields'] = { arg1, arg2 } 
		}}
	}

	local finaldata = http:JSONEncode(data)

	local success, err = pcall(function()
		http:PostAsync(url, finaldata, Enum.HttpContentType.ApplicationJson)
	end)

	if not success then
		warn("Failed to send webhook request: " .. tostring(err))
	end
end

--[[
	
	webhookService.CreateEmbed(plr, title, description, {
		['name'] = "name", -- Embed 1
		['value'] = "value",
		['inline'] = true,
	}, {
		['name'] = "Reason:",
		['value'] =  Reason,
		['inline'] = true,
	}, url,"url of image") 
	webhookService.CreateMessage("@everyone",url)



]]

return module
