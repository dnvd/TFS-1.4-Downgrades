function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	local position = player:getPosition()
	position.x = position.x + 1
	player:teleportTo(position)
	return false
end
