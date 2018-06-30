function drawSplash()
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("fill",0,0,128,128)
	love.graphics.setColor(1,1,1)
	love.graphics.draw(splashLogo, 32,24,0,4)
	love.graphics.setColor(0.972, 0.556, 0.443)
	drawString("PEACHEL", 1, "3", 29, 100, 3)
end

function mainScreen()
	--Background
	love.graphics.setColor(0.992,0.647,0.831)
	love.graphics.rectangle("fill",0,0,128,128);
	--THE Canvas
	for i=1, 32/zoomLevel do
		for j=1, 32/zoomLevel do
			love.graphics.setColor(canvasBuff[i][j][1], canvasBuff[i][j][2], canvasBuff[i][j][3])
			love.graphics.rectangle("fill",4 + (j-1)*zoomLevel*2, 25 + (i-1)*zoomLevel*2, 2*zoomLevel, 2*zoomLevel)
			--Small preview
			--love.graphics.rectangle("fill",127-1-8+j, 0+i, 1, 1)
		end
	end
	
	--Palettes
	for i=1, 8 do
		love.graphics.setColor(palettes[i][1], palettes[i][2], palettes[i][3])
		love.graphics.rectangle("fill",0 + (i-1)*16, 128-16, 16,16)
	end

	--Cursor
	love.graphics.setColor(palettes[activePalette][1], palettes[activePalette][2], palettes[activePalette][3])
	love.graphics.rectangle("fill", 4 + cursor.x*zoomLevel*2, 25 + cursor.y*zoomLevel*2, 2*zoomLevel, 2*zoomLevel)

	--Cursor Border
	--love.graphics.setColor(1-canvasBuff[cursor.y+1][cursor.x+1][1], 1-canvasBuff[cursor.y+1][cursor.x+1][2], 1-canvasBuff[cursor.y+1][cursor.x+1][3])
	--drawLineRect(4+cursor.x*8,25+cursor.y*8,8,8)

	--Canvas's border
	love.graphics.setColor(0.996,0.823,0.949)
	drawLineRect(3,24,66,66)

	--Palette's cursor border
	drawLineRect((activePalette-1)*16, 128-16, 16, 16)
	
	--ZoomLevel
	love.graphics.setColor(1,1,1)
	love.graphics.rectangle("fill", 80, 48, 32, 1)
	drawString(tostring(zoomLevel).."x",1, "3", 88, 32, 2)
end

function colorSelector()
	--Background
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("fill",0,0,128,128)

	love.graphics.setColor(palettes[activePalette][1], palettes[activePalette][2], palettes[activePalette][3])
	love.graphics.rectangle("fill", 8,34,32,32)
	love.graphics.setColor(1,1,1)
	love.graphics.rectangle("fill",6,32,2,32)
	love.graphics.rectangle("fill",6,32,32,2)
	love.graphics.rectangle("fill",6+32,32,2,32)
	love.graphics.rectangle("fill",6,32+32,34,2)

	for i=1, 8 do
		love.graphics.setColor(palettes[i][1], palettes[i][2], palettes[i][3])
		love.graphics.rectangle("fill",0 + (i-1)*16, 128-16, 16,16)
	end

	drawLineRect((activePalette-1)*16, 128-16, 16, 16)

	drawString(tostring(math.floor(palettes[activePalette][1]*255)), 1, "3", 90, 40, 1)
	drawString(tostring(math.floor(palettes[activePalette][2]*255)), 1, "3", 90, 60, 1)
	drawString(tostring(math.floor(palettes[activePalette][3]*255)), 1, "3", 90, 80, 1)
	if rgbSelect==1 then
		love.graphics.setColor(1,1,1)
		drawLineRect(88,38,15,7)
	else 
		love.graphics.setColor(1,0,0)
	end
	drawChar("3","R",64,40,3)
	love.graphics.rectangle("fill", 80, 50,32,1) 
	love.graphics.rectangle("fill", 80+math.floor(palettes[activePalette][1]*32), 49,1,1)
	
	if rgbSelect==2 then
		love.graphics.setColor(1,1,1)
		drawLineRect(88,58,15,7)
	else 
		love.graphics.setColor(0,1,0)
	end
	drawChar("3","G",64,60,3)
	love.graphics.rectangle("fill", 80, 70,32,1) 
	love.graphics.rectangle("fill", 80+math.floor(palettes[activePalette][2]*32), 69,1,1)
	if rgbSelect==3 then
		love.graphics.setColor(1,1,1)
		drawLineRect(88,78,15,7)
	else 
		love.graphics.setColor(0,0,1)
	end
	drawChar("3","B",64,80,3)
	love.graphics.rectangle("fill", 80, 90,32,1) 
	love.graphics.rectangle("fill", 80+math.floor(palettes[activePalette][3]*32), 89,1,1)
end

	
