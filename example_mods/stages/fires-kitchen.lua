function onCreate()
	-- background shit
	makeLuaSprite('fires-kitchen', 'fires-kitchen', 0, 0);
	setScrollFactor('fires-kitchen', 1, 1);
	scaleObject('fires-kitchen', 0.5, 0.5);
	makeLuaSprite('Stary', 'Overheated/Stary', 0, 100);
	setScrollFactor('Stary', 1, 1);
	scaleObject('Stary', 1, 1);

	addLuaSprite('fires-kitchen', false);
	addLuaSprite('Stary', false);

	makeLuaSprite('Overheated', 'SONGHUD/Overheated', -460, 585);
	setScrollFactor('Overheated', 0, 0);
	scaleObject('Overheated', 0.36, 0.36);

	addLuaSprite('Overheated', true);
	doTweenX('kat', 'Overheated', 15, 1, 'sineOut')
end

function onCreatePost()
    setProperty('gf.alpha', 0);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onStepHit()
	--silly ah step junk
	if curStep == 1 then
		doTweenX('dawg', 'Overheated', -550, 0.8, 'sineIn')
	end
	if curStep == 192 then
		doTweenAlpha('starydos', 'Stary', 0, 0.6, backIn)
		cameraFlash("game", "0x00000000", 1, true)
		doTweenAlpha('hesback', 'gf', 1, 0.6, backOut)
	end
	if curStep == 704 then
		doTweenAlpha('starytres', 'Stary', 1, 0.6, backOut)
		cameraFlash("game", "0x00000000", 1, true)
		doTweenAlpha('hesgone', 'gf', 0, 0.6, backIn)
	end
	if curStep == 832 then
		doTweenAlpha('staryquad', 'Stary', 0, 0.6, backIn)
		cameraFlash("game", "0x00000000", 1, true)
		doTweenAlpha('hesbackagain', 'gf', 1, 0.6, backOut)
	end
end