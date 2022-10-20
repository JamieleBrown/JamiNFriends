local SineElap = 0;
local windowX = false;
local windowY = false;

function onCreate()
	-- background shit
	makeLuaSprite('SmashoO', 'SmashoO', -1850, 550);
	setScrollFactor('SmashoO', 1, 1);
	scaleObject('SmashoO', 2, 1);
	addLuaSprite('SmashoO', false);
	makeLuaSprite('red particle', 'particle', 0, 0)

    	windowy = getPropertyFromClass("openfl.Lib", "application.window.y")
    	windowx = getPropertyFromClass("openfl.Lib", "application.window.x")
	setPropertyFromClass("openfl.Lib", "application.window.width", 700)
	setPropertyFromClass("openfl.Lib", "application.window.height", 400)
	setPropertyFromClass("openfl.Lib", "application.window.y", 150)
	setPropertyFromClass("openfl.Lib", "application.window.x", 300)
function onCreatePost()
    setProperty('gf.alpha', 0);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onStepHit()

if curStep == 128 then
windowX = true;
windowY = true;
end

if curStep == 768 then
setPropertyFromClass("openfl.Lib", "application.window.y", 150);
setPropertyFromClass("openfl.Lib", "application.window.x", 300);
windowX = false;
windowY = false;
end

if curStep == 896 then
windowX = true;
windowY = false;
end
if curStep == 1280 then
windowX = false;
windowY = false;
end
end

function onBeatHit()

if curBeat == 32 then
cameraFlash("game", "0xFFFFFFFF", 1, true)
end

if curBeat == 64 then
cameraFlash("game", "0xFFFFFFFF", 1, true)
end

if curBeat == 192 then
cameraFlash("game", "0xFFFFFFFF", 1, true)
end
end

function onUpdatePost(elapsed)
    SineElap = SineElap + (elapsed * 3)
if windowX == true then
        setPropertyFromClass('openfl.Lib', 'application.window.x', 1000*math.cos(SineElap)/10+windowx)
end
if windowY == true then
        setPropertyFromClass('openfl.Lib', 'application.window.y', 1000*math.sin(SineElap)/10+windowy)
end
end
end