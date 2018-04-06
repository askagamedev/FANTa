Scriptname ForcePush extends activemagiceffect  
{FANTA Project Force Push Prototype}

Event OnEffectStart(Actor akTarget, Actor akCaster)

float dX = 0.0
float dY = 0.0
float dZ = 0.0

if akTarget ; Create the vector from player to target
	dX = akTarget.x - akCaster.x
	dY = akTarget.y - akCaster.y + 5.0 ; Add a slight upward push
	dZ = akTarget.z - akCaster.z

	if akTarget
		akCaster.PushActorAway(akTarget, 0.0) ; if it's an actor, we should give it a push first
	endif
	akTarget.ApplyHavokImpulse(dX, dY, dZ, 500.0)
endif

EndEvent