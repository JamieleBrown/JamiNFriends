function onCreate()
	-- background shit
	makeLuaSprite('GNO', 'GNO', -600, -300);
	setScrollFactor('GNO', 1, 1);

	makeLuaSprite('GuysNightOut', 'SONGHUD/GuysNightOut', -460, 585);
	setScrollFactor('GuysNightOut', 0, 0);
	scaleObject('GuysNightOut', 0.4, 0.4);

	addLuaSprite('GNO', false);
	addLuaSprite('GuysNightOut', true);
		runTimer('kat', 1, 1)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'kat' then
	doTweenX('kat', 'GuysNightOut', -55, 0.8, 'sineOut')
	end
end

function onCreatePost()
    setProperty('gf.alpha', 1);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onStepHit()
	if curStep == 1 then
	doTweenX('dawg', 'GuysNightOut', -460, 0.8, 'sineIn')
	end
end