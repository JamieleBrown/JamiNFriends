function onCreate()
	-- background shit
	makeLuaSprite('notcritical', 'notcritical', 0, 0);
	setScrollFactor('notcritical', 1, 1);
	scaleObject('notcritical', 1.5, 1.5);

	addLuaSprite('notcritical', false);
end

function onCreatePost()
    setProperty('gf.alpha', 1);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end