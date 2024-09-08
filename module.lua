

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
			['url'] = "non",
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



return module
