function onCreate()
	makeLuaSprite('CoolTut', 'SONGHUD/CoolTut', -460, 585);
	setScrollFactor('CoolTut', 0, 0);
	scaleObject('CoolTut', 0.4, 0.4);

	addLuaSprite('CoolTut', true);
	runTimer('kat', 1, 1)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'kat' then
	doTweenX('kat', 'CoolTut', -55, 1, 'sineOut')
	end
end
function onStepHit()
	if curStep == 1 then
	doTweenX('dawg', 'CoolTut', -550, 0.8, 'sineIn')
	end
end