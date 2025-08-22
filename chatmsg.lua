local TextChatService = game:GetService("TextChatService")

local function chatmsg(message)
	local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync(message)
	end
end

chatmsg("$ILENCE.WTF ON TOP!")
