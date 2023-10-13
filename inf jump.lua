Events.MatchStart(function(event)
    local startMessage = "inf jump yessir"
    local color = Color3.fromRGB(0, 0, 0)
    AnnouncementService.sendAnnouncement(startMessage, color)
    
end)
--set all players to have inf jumps
for i, player in ipairs(PlayerService.getPlayers()) do 
    player:registerAdditionalAirJumps("bounce", 99999)
end