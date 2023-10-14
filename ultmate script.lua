
Events.MatchStart(function(event)
    local startMessage = "inf jump yessir"
    local color = Color3.fromRGB(0, 0, 0)
    AnnouncementService.sendAnnouncement(startMessage, color)
    
end)
--set all players to have inf jumps
for i, player in ipairs(PlayerService.getPlayers()) do 
    player:registerAdditionalAirJumps("bounce", 99999)
end

Events.MatchStart(function(event)
    ShopService.addItem(ItemType.BALLOON, 3, ItemType.EMERALD, 1)
end)

AbilityService.createAbility("script_speed", KeyCode.X, {
    maxProgress = 10,
    progressPerUse = 5,
})

AbilityService.enableAbility(MatchService.getPlayers(), "script_speed")

Events.UseAbility(function (event)
    if (event.abilityName == "script_speed") then
        StatusEffectService.giveEffect(event.entity, StatusEffectType.SPEED, 5)
    end
end)
-- Set up a 20% chance to drop an emerald when damaging enemies
Events.EntityDamage(function(event)
    if not event.fromEntity then
        return
    end
    
    -- Only give emeralds when random between 1 and 5 is 1
    if math.random(1, 5) ~= 1 then
        return
    end
    
    local fromPlayer = event.fromEntity:getPlayer()
    if fromPlayer then
        InventoryService.giveItem(fromPlayer, ItemType.EMERALD, 1, true)
    end
end)