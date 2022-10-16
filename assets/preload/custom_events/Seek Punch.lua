-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Seek Punch' then
		playSound('golpeSeek',0.81)
		triggerEvent('Screen Shake', '0.34, 0.05', '0,0')
		triggerEvent('Add Camera Zoom', '0.015', '0.03')
	end
end