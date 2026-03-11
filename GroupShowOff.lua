local GroupID = 1174414	-- No idea what group this even was. You have about a 1 in 50 chance of guessing and I can't be bothered.
local CharHide = 5			
							
game:GetService('Players').PlayerAdded:Connect(function(p)
	local ls = Instance.new('IntValue', p)
	ls.Name = 'leaderstats'
	local rank = Instance.new('StringValue', ls)
	rank.Name = 'Rank'
	rank.Value = 'Guest'
	if p:IsInGroup(GroupID) then
		local xrole = p:GetRoleInGroup(GroupID)
		if string.len(xrole) <= CharHide then
			warn('[GroupLeaderboard] Attempted to hide more characters than role has; using default name')
			rank.Value = xrole
		else
			local role = string.sub(xrole, CharHide+1)
			rank.Value = role
		end
	end
end)