require "fileFunc"
require "drawFunc"
require "keyHandler"
require "scenesFunc"

function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	love.window.setFullscreen(true, "desktop")
	width, height = love.graphics.getDimensions()
	scaleCoeff = height/128
	paddingCoeff=(width - (128 * scaleCoeff))/2
	canvasBuff={}
	for i=1, 8 do
		canvasBuff[i]={}
		for j=1, 8 do
			canvasBuff[i][j] = {}
			for k=1, 3 do
				canvasBuff[i][j][k]=0.7
			end
		end
	end
	palettes={}
	palettes[1]={}
	palettes[1][1]=0.937
	palettes[1][2]=0.18
	palettes[1][3]=0.686
	palettes[2]={}
	palettes[2][1]=0.18
	palettes[2][2]=0.713
	palettes[2][3]=0.937
	for i=3, 8 do
		palettes[i]={}
		for j=1, 3 do
			palettes[i][j]=0.1*i;
		end
	end
	
	love.keyboard.setKeyRepeat(true)
	
	activePalette=1
	cursor={}
	cursor.x = 0
	cursor.y = 0
	
	makeVixelDir()
	splashLogo = love.graphics.newImage("peachel.png")
	screen = "splash"
	delayCounter=0
	delaySetPoint=2
	timerBool = true
	rgbSelect = 1
end

function love.update(dt)
	modifierDetector()
	if timerBool == true then
		if delayCounter<delaySetPoint then
			delayCounter = delayCounter + dt
		else
			screen = "main"
			timerBool = false
			delayCounter = 0
			delaySetPoint = 0
		end
	end
end

function love.draw()
	love.graphics.setLineStyle("rough");
	love.graphics.setDefaultFilter("nearest", "nearest")
	love.graphics.translate(paddingCoeff, 0)
	love.graphics.scale(scaleCoeff)
	if screen == "splash" then
		drawSplash()
	elseif screen == "main" then
		mainScreen()
	elseif screen == "color" then
		colorSelector()	
	end
	--drawString("1234567890",1,"3",10,10,1)
end
