function onCreate()
	makeLuaSprite('testWhiteSquare', '', -300, 0)
	makeGraphic('testWhiteSquare', 3000, 1000, 'FFFFFF')
	addLuaSprite('testWhiteSquare', false)
	makeLuaSprite('funniblackrect', '', -100, -550)
	makeGraphic('funniblackrect', 1500, 500, '000000')
	addLuaSprite('funniblackrect', true)
	setScrollFactor('funniblackrect', 0, 0)
	makeLuaSprite('2funniblackrect', '', -100, 800)
	makeGraphic('2funniblackrect', 1500, 500, '000000')
	addLuaSprite('2funniblackrect', true)
	setScrollFactor('2funniblackrect', 0, 0)
	doTweenAlpha('gone', 'testWhiteSquare', 0, 0.01, 'linear')
end
function onStepHit()
	--silly ah step junk
	if curStep == 320 then
		doTweenY('ded', '2funniblackrect', 550, 1.2, 'easeInOut')
		doTweenY('2ded', 'funniblackrect', -300, 1.2, 'easeInOut')
		doTweenAlpha('3ded', 'testWhiteSquare', 1, 1.2, 'easeInOut')
		doTweenAlpha('oof', 'gf', 0, 1.2, 'easeInOut')
		doTweenColor('bfColorTween', 'boyfriend', '000000', 1.2, 'easeOut')
		doTweenColor('dadColorTween', 'dad', '000000', 1.2, 'easeOut')
	end
	if curStep == 448 then
		doTweenY('4ded', '2funniblackrect', 800, 1.2, 'easeInOut')
		doTweenY('5ded', 'funniblackrect', -550, 1.2, 'easeInOut')
		doTweenAlpha('6ded', 'testWhiteSquare', 0, 1.2, 'easeInOut')
		doTweenColor('1bfColorTween', 'boyfriend', 'FFFFFF', 1.2, 'easeOut')
		doTweenColor('2dadColorTween', 'dad', 'FFFFFF', 1.2, 'easeOut')
		doTweenAlpha('foo', 'gf', 1, 1.2, 'easeInOut')
	end
end