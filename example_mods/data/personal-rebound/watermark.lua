function onCreate()
	makeLuaSprite('PersonalRebound', 'SONGHUD/PersonalRebound', -460, 585);
	setScrollFactor('PersonalRebound', 0, 0);
	scaleObject('PersonalRebound', 0.4, 0.4);

	addLuaSprite('PersonalRebound', true);
	runTimer('kat', 1, 1)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'kat' then
	doTweenX('kat', 'PersonalRebound', -55, 1, 'sineOut')
	end
end
function onStepHit()
	if curStep == 1 then
	doTweenX('dawg', 'PersonalRebound', -550, 0.8, 'sineIn')
	end
end