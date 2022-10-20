function onCreate()
	makeLuaSprite('Friendless', 'SONGHUD/Friendless', -460, 585);
	setScrollFactor('Friendless', 0, 0);
	scaleObject('Friendless', 0.4, 0.4);

	addLuaSprite('Friendless', true);
			runTimer('kat', 1, 1)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'kat' then
	doTweenX('kat', 'Friendless', -55, 1, 'sineOut')
	end
end
function onStepHit()
	if curStep == 1 then
	doTweenX('dawg', 'Friendless', -550, 0.8, 'sineIn')
	end
end