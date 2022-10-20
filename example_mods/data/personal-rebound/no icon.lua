function onCreate()
	setProperty('iconP2.alpha', 0)
	setProperty('iconP1.alpha', 0)
	setProperty('gf.alpha', 0)
	setProperty('dad.alpha', 0)
	setCharacterX('boyfriend',500)
end
function onStepHit()
    health = getProperty('health')
    if getProperty('health') < 2 then
        setProperty('health', health+ 1);
    end
end
