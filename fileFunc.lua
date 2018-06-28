require "lfs"
local saveDir
function makeVixelDir()
	if love._os == "Linux" then
		saveDir=os.getenv("HOME").."/vixel"
	elseif love._os == "Windows" then
		saveDir="C:\\Users\\".. os.getenv("USERNAME") .. "\\Documents\\vixel"
	end
	lfs.mkdir(saveDir)
end

function writePNG()
	local image = love.image.newImageData(8,8)
	for i=0, 7 do 
		for j=0, 7 do
			image:setPixel(j, i, canvasBuff[i+1][j+1][1], canvasBuff[i+1][j+1][2], canvasBuff[i+1][j+1][3], 1)
		end
	end
	local filedata = image:encode("png", "tmp.png")
	local r = love.filesystem.read("tmp.png")
	local f
	if love._os == "Linux" then
		f = io.open(saveDir .. "/"..os.date("%m%d%Y-%H%M%S.png"), "wb")
	elseif love._os == "Windows" then
		f = io.open(saveDir .. "\\"..os.date("%m%d%Y-%H%M%S.png"), "wb")
	end
	f:write(r)
	f:close()
	love.filesystem.remove("tmp.png")
end
