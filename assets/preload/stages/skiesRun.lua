weaVolando = true
skiCanta = true

function onCreate()
	precacheImage('DOORS/transition')
	makeAnimatedLuaSprite('bg', 'DOORS/bgMovin',-1000,-1000);
    addLuaSprite('bg', false);
    setProperty('bg.alpha', 1)
    addAnimationByPrefix('bg', 'bgShit', 'bgShit', 18, true);
    objectPlayAnimation('bg', 'bgShit');
    scaleObject('bg',2, 2);

	makeAnimatedLuaSprite('transition', 'DOORS/transition', 0,0);
	setObjectCamera('transition', 'hud')
	addLuaSprite('transition', true);
	setProperty('transition.alpha', 0)
	addAnimationByPrefix('transition', 'trans', 'trans', 30, false);
	scaleObject('transition',1, 1);

	makeLuaSprite('seekEndBG','DOORS/seekEnd',-850,-900);
	scaleObject('seekEndBG',0.85, 0.85);
	setProperty('seekEndBG.alpha', 0)
	addLuaSprite('seekEndBG',false);


	addCharacterToList('ski-fly', 'gf')
	addCharacterToList('skiAS', 'gf')
	addCharacterToList('bluAS', 'dad')
	addCharacterToList('nuAS', 'bf')
end

function onCreatePost()
	
	
	
end

function onUpdate()
	if mustHitSection == true then
        cameraSetTarget('bf')
    end
	function onUpdate(elapsed) 
		if weaVolando == true then  
			songPos = getSongPosition()
			local currentBeat = (songPos/5000)*(curBpm/60)
			doTweenY('opponentmove', 'boyfriend', -600 - 100*math.sin((currentBeat+12*12)*math.pi), 2)
			doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
			doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)
		end
		 
		if curStep == 0 then
			 started = true
		end

	end
end

function onStepHit()
	if curStep == 288 then
		triggerEvent('Change Character', 'gf', 'ski-fly')
		doTweenX('tweenLolGF','gf', getProperty('boyfriend.x')-300,0.9,'cubeInOut')
	end
	if curStep == 1552 then
		doTweenX('tweenLol','boyfriend', getProperty('boyfriend.x')-2000,0.9,'cubeInOut')
		setProperty('transition.alpha', 1)
		objectPlayAnimation('transition', 'trans');
		runTimer('transMidShit', 0.7, 1)
		
	end
	if curStep == 1561 then
		setProperty('transition.alpha', 1)
		objectPlayAnimation('transition', 'trans');
	end
	if curStep == 1570 then
		setProperty('transition.alpha', 0)
	end
end

function onCreatePost()
	--Change Strums position
	noteTweenX('leftP2 to leftP1', 0, 732, 0.1, linear)
    noteTweenX('downP2 to downP1', 1, 845, 0.1, linear)
    noteTweenX('upP2 to upP1', 2, 955, 0.1, linear)
    noteTweenX('rightP2 to rightP1', 3, 1067, 0.1, linear)
    noteTweenX('leftP1 to leftP2', 4, 92, 0.1, linear)
    noteTweenX('downP1 to downP2', 5, 204, 0.1, linear)
    noteTweenX('upP1 to upP2', 6, 316, 0.1, linear)
    noteTweenX('rightP1 to rightP2', 7,428, 0.1, linear)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'transMidShit' then
		setProperty('seekEndBG.alpha', 1)
		setProperty('bg.alpha', 0)
		setProperty('defaultCamZoom',1.1)
		triggerEvent('Change Character', 'dad', 'bluAS')
		triggerEvent('Change Character', 'boyfriend', 'nuAS')
		triggerEvent('Change Character', 'gf', 'skiAS')
		setProperty('boyfriend.x',100)
		setProperty('boyfriend.y',-600)
		setProperty('dad.x',-450)
		setProperty('dad.y',-670)
		setProperty('gf.x',-200)
		setProperty('gf.y',-480)
		weaVolando = false
	end
end

