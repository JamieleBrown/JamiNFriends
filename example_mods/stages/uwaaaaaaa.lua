function onCreate()
	-- background shit
	makeLuaSprite('Redcall-gets-booloed', 'Redcall-gets-booloed', 0, 0);
	setScrollFactor('Redcall-gets-booloed', 1, 1);
	scaleObject('Redcall-gets-booloed', 1, 1);

	addLuaSprite('Redcall-gets-booloed', false);
end

function onCreatePost()
    setProperty('gf.alpha', 1);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end