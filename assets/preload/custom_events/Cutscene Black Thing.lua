-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Cutscene Black Thing' then
		blackThing = tonumber(value1);
		if blackThing == 0 then
			makeLuaSprite('blackThing1', 'blackThing', 0, -182);
			setObjectCamera('blackThing1','hud')
			setScrollFactor('blackThing1', 1.3, 1);
			scaleObject('blackThing1', 1, 1);
			addLuaSprite('blackThing1', true);
			doTweenY('blackThing1Tween', 'blackThing1', 0, 1, 'circInOut')

			makeLuaSprite('blackThing2', 'blackThing', 0, screenHeight);
			setObjectCamera('blackThing2','hud')
			setScrollFactor('blackThing2', 1.3, 1);
			scaleObject('blackThing2', 1, 1);
			addLuaSprite('blackThing2', true);
			doTweenY('blackThing2Tween', 'blackThing2', screenHeight-182, 1, 'circInOut')

            --Fade out hud elements
			doTweenAlpha('hBarTween', 'healthBar', 0, 0.8, 'circInOut')
			doTweenAlpha('iconp1Tween', 'iconP1', 0, 0.8, 'circInOut')
			doTweenAlpha('iconp2Tween', 'iconP2', 0, 0.8, 'circInOut')
			doTweenAlpha('scoreTween', 'scoreTxt', 0, 1, 'circInOut')
			doTweenAlpha('hpicoTween', 'picoHealth', 0, 1, 'circInOut')

		end
		if blackThing == 1 then
			doTweenY('blackThing1Tween', 'blackThing1',-182, 1, 'circInOut')

			doTweenY('blackThing2Tween', 'blackThing2', screenHeight, 1, 'circInOut')

			doTweenY('txtSpanishTween', 'txtSpanish', 1000, 1, 'circInOut')
			doTweenY('txtEnglishTween', 'txtEnglish', 980, 1, 'circInOut')

			--Fade in hud elements
			doTweenAlpha('hBarTween', 'healthBar', 1, 0.8, 'linear')
			doTweenAlpha('iconp1Tween', 'iconP1', 1, 0.8, 'linear')
			doTweenAlpha('iconp2Tween', 'iconP2', 1, 0.8, 'linear')
			doTweenAlpha('scoreTween', 'scoreTxt', 1, 1, 'linear')
			doTweenAlpha('hpicoTween', 'picoHealth', 1, 1, 'circInOut')
		end
	end
end