function onCreate()
	makeLuaSprite('GuysNightOut', 'SONGHUD/GuysNightOut', -460, 585);
	setScrollFactor('GuysNightOut', 0, 0);
	scaleObject('GuysNightOut', 0.4, 0.4);

	addLuaSprite('GuysNightOut', true);
	runTimer('kat', 1, 1)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'kat' then
	doTweenX('kat', 'GuysNightOut', -55, 1, 'sineOut')
	end
end
function onStepHit()
	if curStep == 1 then
	doTweenX('dawg', 'GuysNightOut', -550, 0.8, 'backIn')
	end
end