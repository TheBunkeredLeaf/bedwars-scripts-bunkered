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