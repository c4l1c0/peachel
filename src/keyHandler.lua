function modifierDetector()
	if love.keyboard.isDown("lshift") then
		keyModShift=true
	else
		keyModShift=false
	end
	if love.keyboard.isDown("space") then
		canvasBuff[cursor.y+1][cursor.x+1][1] = palettes[activePalette][1]
		canvasBuff[cursor.y+1][cursor.x+1][2] = palettes[activePalette][2]
		canvasBuff[cursor.y+1][cursor.x+1][3] = palettes[activePalette][3]
	end
end

function love.keypressed(key)
	if screen=="main" then
		if key=="h" then
			if cursor.x > 0 then
				cursor.x = cursor.x - 1
			end
		end
		
		if key=="j" then
			if cursor.y < (32/zoomLevel) - 1 then
				cursor.y = cursor.y + 1
			end
		end
		if key=="k" then
			if cursor.y > 0 then
				cursor.y = cursor.y - 1
			end
		end
		if key=="l" then
			if cursor.x < (32/zoomLevel) - 1  then
				cursor.x = cursor.x + 1
			end
		end

		if key=="w" then writePNG() end
	end
	
	if screen=="color" then
		if key=="h" then
			if palettes[activePalette][rgbSelect] > 0 then
				palettes[activePalette][rgbSelect] = palettes[activePalette][rgbSelect] - 1/255
			else palettes[activePalette][rgbSelect] = 0
			end
		end
		if key=="j" then
			rgbSelect = rgbSelect + 1
			if rgbSelect > 3 then rgbSelect = 1 end
		end
		if key=="k" then
			rgbSelect = rgbSelect - 1
			if rgbSelect < 1 then rgbSelect = 3 end
		end
		if key=="l" then
			if palettes[activePalette][rgbSelect] < 1 then
				palettes[activePalette][rgbSelect] = palettes[activePalette][rgbSelect] + 1/255
			else palettes[activePalette][rgbSelect] = 1
			end
		end
		
	end

	if key=="1" then if keyModShift then activePalette=1 end end
	if key=="2" then if keyModShift then activePalette=2 end end
	if key=="3" then if keyModShift then activePalette=3 end end
	if key=="4" then if keyModShift then activePalette=4 end end
	if key=="5" then if keyModShift then activePalette=5 end end
	if key=="6" then if keyModShift then activePalette=6 end end
	if key=="7" then if keyModShift then activePalette=7 end end
	if key=="8" then if keyModShift then activePalette=8 end end

	if key=="f" then 
		activePalette = activePalette + 1
		if activePalette > 8 then activePalette = 1 end
	end
	
	if key=="d" then
		activePalette = activePalette - 1
		if activePalette < 1 then activePalette = 8 end
	end

	if key=="escape" then love.event.quit() end

	if key=="tab" then
		if screen=="main" then screen="color"
		elseif screen=="color" then screen="main" 
		end
	end
	if key=="p" then
		if zoomLevel ~= 8 then
			zoomLevel = zoomLevel *2
		end
	end
	if key=="o" then
		if zoomLevel ~= 1 then
			zoomLevel = zoomLevel / 2
		end
	end
	
end
