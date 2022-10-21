function onCreate()
	-- background shit
	makeLuaSprite('BG', 'BG', -900, -600);
	setScrollFactor('BG', 1, 1);
	scaleObject('BG', 1, 1)
	addLuaSprite('BG', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end