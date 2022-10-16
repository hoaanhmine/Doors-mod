-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Subtitulos' then
		spanish = tonumber(value2);
		english = tonumber(value1);

		makeLuaText('txtEnglish', value1, 1000,screenWidth/9.5, 550)
		setTextSize('txtEnglish', 30)
		setTextColor('txtEnglish', 'FFFFFF')
		setTextBorder('txtEnglish', 3, '000000')
		addLuaText('txtEnglish')

		makeLuaText('txtSpanish', value2, 1000,screenWidth/9.5, 580)
		setTextSize('txtSpanish', 30)
		setTextColor('txtSpanish', 'A6A6A6')
		setTextBorder('txtSpanish', 3, '000000')
		addLuaText('txtSpanish')
	end
end