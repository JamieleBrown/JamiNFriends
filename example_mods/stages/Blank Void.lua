function onCreate()
	-- background shit
	makeLuaSprite('Blank-Void', 'Blank-Void', 0, 0);
	makeLuaSprite('Flower', 'Flower', 400, 1625);
	setScrollFactor('Blank-Void', 1, 1);
	setScrollFactor('Flower', 1.2, 1.4);
	scaleObject('Blank Void', 1.0, 1.0);
	scaleObject('Flower', 1.3, 1.3);

	addLuaSprite('Blank-Void', false);
	addLuaSprite('Flower', true);

	makeLuaSprite('FriendlyEncounter', 'SONGHUD/FriendlyEncounter', -460, 585);
	setScrollFactor('FriendlyEncounter', 0, 0);
	scaleObject('FriendlyEncounter', 0.4, 0.4);

	addLuaSprite('FriendlyEncounter', true);
	doTweenX('kat', 'FriendlyEncounter', -55, 1, 'sineOut')
end

function onCreatePost()
    setProperty('gf.alpha', 1);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end
function onStepHit()
	if curStep == 1 then
	doTweenX('dawg', 'FriendlyEncounter', -550, 0.8, 'sineIn')
	end
end

end