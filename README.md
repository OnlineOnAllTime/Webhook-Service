# Webhook-Service
Webhook module for roblox studio
### Embed request
---
	
	webhookService.CreateEmbed(plr, title, description, {
		['name'] = "name", -- Embed 1
		['value'] = "value",
		['inline'] = true,
	}, {
		['name'] = "Reason:",
		['value'] =  Reason,
		['inline'] = true,
	}, url,"url of image") 



---
### Message request
---
	webhookService.CreateMessage("@everyone",url)
---

