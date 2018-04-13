Scriptname HighJump extends activemagiceffect  
{FANTA Project high jump script}

Event OnEffectStart( Actor akTarget, Actor akCaster )

  Debug.Notification("High Jump is on")
  Game.SetGameSettingFloat("fjumpHeightMin", 495.0)

EndEvent

Event OnEffectFinish( Actor akTarget, Actor akCaster)

  Debug.Notification("High Jump has ended")
  Game.SetGameSettingFloat("fjumpheightmin", 76.0)

EndEvent