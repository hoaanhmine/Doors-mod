function onCreate()
	makeLuaSprite('bg', 'DOORS/walkinBG', -20000, -400);
	setLuaSpriteScrollFactor('bg', 1.0, 1.0);
	addLuaSprite('bg', false);
	scaleObject('bg', 3.4, 2)
	


end

function onCreatePost()
	setProperty('gf.alpha',0)
	doTweenX('tweenLol','bg',-100,140,'linear')
	doTweenY('tweenDownNu','boyfriend',434,1,'linear')
	doTweenY('tweenUpBlu','dad',382,1,'linear')
	
end

function onTweenCompleted(tag)
	if tag == 'tweenDownNu' then
		doTweenY('tweenUpNu','boyfriend',382,1,'linear')
	end
	if tag == 'tweenUpNu' then
		doTweenY('tweenDownNu','boyfriend',434,1,'linear')
	end

	if tag == 'tweenDownBlu' then
		doTweenY('tweenUpBlu','dad',382,1,'linear')
	end
	if tag == 'tweenUpBlu' then
		doTweenY('tweenDownBlu','dad',434,1,'linear')
	end
end

function onUpdate()
	if mustHitSection == true then
        cameraSetTarget('bf')
    end
	if mustHitSection == false then
        cameraSetTarget('dad')
    end
end

