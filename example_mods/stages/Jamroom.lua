function onCreate()
	-- background shit
	makeLuaSprite('background', 'background', 0, 0);
	setScrollFactor('background', 1, 1);
	scaleObject('background', 1.0, 1.0);
	makeLuaSprite('testWhiteSquare', '', 0, 0);
	makeGraphic('testWhiteSquare', 3000, 2000, '000000');
	addLuaSprite('testWhiteSquare', true);
	addLuaSprite('background', false);
		noteTweenAlpha('ded', 0, 0, 0.1, backIn)
		noteTweenAlpha('2ded', 1, 0, 0.1, backIn)
		noteTweenAlpha('3ded', 2, 0, 0.1, backIn)
		noteTweenAlpha('4ded', 3, 0, 0.1, backIn)
		noteTweenAlpha('5ded', 4, 0, 0.1, backIn)
		noteTweenAlpha('6ded', 5, 0, 0.1, backIn)
		noteTweenAlpha('7ded', 6, 0, 0.1, backIn)
		noteTweenAlpha('8ded', 7, 0, 0.1, backIn)
	makeLuaSprite('Friendless', 'SONGHUD/Friendless', -460, 605);
	setScrollFactor('Friendless', 0, 0);
	scaleObject('Friendless', 0.4, 0.4);

	addLuaSprite('Friendless', true);
		runTimer('kat', 1, 1)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'kat' then
	doTweenX('kat', 'Friendless', -55, 0.8, 'sineOut')
	end
end
function onCreatePost()
    setProperty('gf.alpha', 0);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onStepHit()
	--silly ah step junk
	if curStep == 1 then
		doTweenX('dawg', 'Friendless', -460, 0.8, 'sineIn')
		doTweenAlpha('gone', 'testWhiteSquare', 0, 1, 'easeOut')
	end
	if curStep == 20 then
		doTweenAlpha('catdawg', 'Friendless', 0, 0.1, 'backIn')
	end
	if curStep == 736 then
		setProperty('defaultCamZoom', 0.6)
		noteTweenAlpha(0, 0, 0, 0.1, backIn)
		noteTweenAlpha(1, 1, 0, 0.1, backIn)
		noteTweenAlpha(2, 2, 0, 0.1, backIn)
		noteTweenAlpha(3, 3, 0, 0.1, backIn)
		noteTweenAlpha(4, 4, 0, 0.1, backIn)
		noteTweenAlpha(5, 5, 0, 0.1, backIn)
		noteTweenAlpha(6, 6, 0, 0.1, backIn)
		noteTweenAlpha(7, 7, 0, 0.1, backIn)
	end
	if curStep == 768 then
		setProperty('defaultCamZoom', 0.9)
		noteTweenAlpha(8, 0, 1, 0.1, backIn)
		noteTweenAlpha(9, 1, 1, 0.1, backIn)
		noteTweenAlpha(10, 2, 1, 0.1, backIn)
		noteTweenAlpha(11, 3, 1, 0.1, backIn)
		noteTweenAlpha(12, 4, 1, 0.1, backIn)
		noteTweenAlpha(13, 5, 1, 0.1, backIn)
		noteTweenAlpha(14, 6, 1, 0.1, backIn)
		noteTweenAlpha(15, 7, 1, 0.1, backIn)
	end
	if curStep == 896 then
		removeLuaSprite('background', true)

		makeLuaSprite('background-red', 'background-red', 0, 0);
		setScrollFactor('background-red', 1, 1);
		scaleObject('background-red', 1.0, 1.0);

		addLuaSprite('background-red', false);
		cameraFlash("game", "0xFFFFFFFF", 1, true)
	end
	if curStep == 1408 then
		doTweenAlpha('background-red', 'background-red', 0, 0.6, backIn)
		cameraFlash("game", "0xFFFFFFFF", 1, true)
	end
	if curStep == 1544 then
		doTweenAlpha('gone', 'testWhiteSquare', 1, 1, 'easeIn')
	end
end