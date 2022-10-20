local xx = 220;
local yy = -100;
local xx2 = 720;
local yy2 = -100;
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	-- background shit
	makeLuaSprite('hill-1', 'hill-1', -2700, 200);
	setScrollFactor('hill-1', 1, 1);
	scaleObject('hill-1', 1, 1);
	makeLuaSprite('hill-2', 'hill-2', -3700, -300);
	setScrollFactor('hill-2', 0.6, 0.6);
	scaleObject('hill-2', 1, 1);
	makeLuaSprite('Skies', 'Skies', -6000, -7000);
	setScrollFactor('Skies', 0, 1);
	scaleObject('Skies', 2, 1);

	addLuaSprite('Skies', false);
	addLuaSprite('hill-2', false);
	addLuaSprite('hill-1', false);
	makeLuaSprite('Interaction', 'SONGHUD/Interaction', -2400, 905);
	setScrollFactor('Interaction', 0, 0);
	scaleObject('Interaction', 1.05, 1.05);

	addLuaSprite('Interaction', true);
	doTweenX('kat', 'Interaction', -1190, 1, 'sineOut')
end

function onCreatePost()
    setProperty('gf.alpha', 1);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end

function onStepHit()
	if curStep == 1 then
	    doTweenX('dawg', 'Interaction', -2400, 0.8, 'sineIn')
	end
    if curStep == 118 then
       makeLuaSprite('meme', 'Intermmojis/JnF-math.random(1, 19)',0, 0)
       addLuaSprite('LOOK', 'Intermmojis/JnF-math.random(1, 19)')
    end
	if curStep == 160 then
		cameraFlash("game", "0xFFFFFFFF", 1, true)
		doTweenY('crazy', 'Skies', -5000, 5, 'easeIn')
	end
	if curStep == 416 then
		cameraFlash("game", "0xFFFFFFFF", 1, true)
		doTweenY('not-crazy', 'Skies', -4000, 5, 'easeIn')
	end
	if curStep == 544 then
		cameraFlash("game", "0xFFFFFFFF", 1, true)
		doTweenY('also-not-crazy', 'Skies', -3000, 5, 'easeIn')
	end
	if curStep == 1056 then
		cameraFlash("game", "0xFFFFFFFF", 1, true)
		doTweenY('also-not-crazy', 'Skies', -2000, 5, 'easeIn')
	end
end
end
