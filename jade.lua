Events.MatchStart(function(event)
  giveItem(getPlayers();, IRON, 9999999999)  
    local startMessage = "You have 30 seconds to hide!"
    local color = Color3.fromRGB(80, 255, 175)
    AnnouncementService.sendAnnouncement(startMessage, color)
    
    task.delay(30, function ()
        local nextMessage = "Seekers have been released!"
        AnnouncementService.sendAnnouncement(nextMessage, color) 
    end)
end)