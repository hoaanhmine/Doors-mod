local triggerOnce = true

function onCreate()
	makeLuaSprite('bg', 'DOORS/bgRush', 0, 0);
	setLuaSpriteScrollFactor('bg', 1.0, 1.0);
	addLuaSprite('bg', false);
	scaleObject('bg', 1.2, 1.2)

	makeLuaSprite('bgLight', 'DOORS/bgRushLight', 0, 0);
	setLuaSpriteScrollFactor('bgLight', 1.0, 1.0);
	addLuaSprite('bgLight', false);
	scaleObject('bgLight', 1.2, 1.2)

	makeLuaSprite('closetOverlay', 'DOORS/firstPersonCloset', 0, 0);
	setLuaSpriteScrollFactor('closetOverlay', 1.0, 1.0);
	addLuaSprite('closetOverlay', true);
	scaleObject('closetOverlay', 1.2, 1.2)

	triggerEvent('Play Animation', 'cheer', '2')
end

function onCreatePost()
	setProperty('boyfriend.alpha',0)
	setProperty('gf.alpha',0)
	triggerEvent('Camera Follow Pos', 1150, 600)
	setProperty('dad.alpha',0)

	setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0 + screenWidth/4)
	setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1 + screenWidth/4)
	setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2 + screenWidth/4)
	setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3 + screenWidth/4)
	setPropertyFromGroup('playerStrums', 4, 'x', defaultOpponentStrumX4 + screenWidth/4)

	

end

function onUpdate()
	
	setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 888)
	setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 888)
	setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 888)
	setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX2 + 888)
	setPropertyFromGroup('opponentStrums', 4, 'x', defaultPlayerStrumX3 + 888)
	if mustHitSection == true then
        doTweenAlpha('closetFadeIn', 'closetOverlay', 1, 0.12, 'linear')
		setProperty('defaultCamZoom',0.6)
	end
	if mustHitSection == false then
        doTweenAlpha('closetFadeOut', 'closetOverlay', 0, 0.12, 'linear')
		setProperty('defaultCamZoom',0.8)
	end
end

function onStepHit()
	if curStep == 96 then
		cameraFlash('game', '000000', 0.1,true)
	end
	if curStep == 99 then
		cameraFlash('game', '000000', 0.1,true)
	end
	if curStep == 101 then
		cameraFlash('game', '000000', 0.1,true)
	end
	if curStep == 104 then
		cameraFlash('game', '000000', 0.1,true)
	end
	if curStep == 107 then
		cameraFlash('game', '000000', 0.1,true)
	end
	if curStep == 104 then
		cameraFlash('game', '000000', 0.1,true)
	end
	if curStep == 109 then
		cameraFlash('game', '000000', 0.1,true)
	end
	if curStep == 120 then
		cameraFlash('game', '000000', 1,true)
		setProperty('bgLight.alpha',0)
		setProperty('dad.alpha',1)
	end
end
