function drawLineRect(x, y, szx, szy)
	love.graphics.rectangle("fill", x, y, szx, 1)
	love.graphics.rectangle("fill", x, y, 1, szy)
	love.graphics.rectangle("fill", x, y+szy-1, szx, 1)
	love.graphics.rectangle("fill", x+szx-1, y, 1, szy)
end
function drawChar(fonts, ch, x, y, s)
	if fonts=="3" then
		if ch=="A" or ch=="a" then
			love.graphics.rectangle("fill",x+1*s,y,1*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,3*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+2*s,1*s,1*s)
		elseif ch=="B" or ch=="b" then
			love.graphics.rectangle("fill",x,y,2*s,3*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,1*s)
		elseif ch=="C" or ch=="c" then
			love.graphics.rectangle("fill",x+1*s,y,2*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y+2*s,2*s,1*s)
		elseif ch=="D" or ch=="d" then
			love.graphics.rectangle("fill",x,y,2*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,2*s,1*s)
		elseif ch=="E" or ch=="e" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,2*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,3*s,1*s)
		elseif ch=="F" or ch=="f" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,2*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,1*s,1*s)
		elseif ch=="G" or ch=="g" then
			love.graphics.rectangle("fill",x,y,2*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,3*s,1*s)
		elseif ch=="H" or ch=="h" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,3*s)
		elseif ch=="I" or ch=="i" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,3*s,1*s)
		elseif ch=="J" or ch=="j" then
			love.graphics.rectangle("fill",x+2*s,y,1*s,2*s)
			love.graphics.rectangle("fill",x,y+2*s,2*s,1*s)
		elseif ch=="K" or ch=="k" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+2*s,1*s,1*s)
		elseif ch=="L" or ch=="l" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y+2*s,2*s,1*s)
		elseif ch=="M" or ch=="m" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y,1*s,2*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,3*s)
		elseif ch=="N" or ch=="n" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,2*s)
		elseif ch=="O" or ch=="o" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,3*s,1*s)
		elseif ch=="P" or ch=="p" then
			love.graphics.rectangle("fill",x,y,3*s,2*s)
			love.graphics.rectangle("fill",x,y+2*s,1*s,1*s)
		elseif ch=="Q" or ch=="q" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,2*s,1*s)
		elseif ch=="R" or ch=="r" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y,1*s,2*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,2*s)
		elseif ch=="S" or ch=="s" then
			love.graphics.rectangle("fill",x,y+2*s,1*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y,1*s,3*s)
			love.graphics.rectangle("fill",x+2*s,y+2*s,1*s,1*s)
		elseif ch=="T" or ch=="t" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,2*s)
		elseif ch=="U" or ch=="u" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y+2*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,3*s)
		elseif ch=="V" or ch=="v" then
			love.graphics.rectangle("fill",x,y,1*s,2*s)
			love.graphics.rectangle("fill",x+1*s,y+2*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,3*s)
		elseif ch=="W" or ch=="w" then
			love.graphics.rectangle("fill",x,y,1*s,3*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,2*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,3*s)
		elseif ch=="X" or ch=="x" then
			love.graphics.rectangle("fill",x,y,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+2*s,1*s,1*s)
		elseif ch=="Y" or ch=="y" then
			love.graphics.rectangle("fill",x,y,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,2*s)
		elseif ch=="Z" or ch=="z" then
			love.graphics.rectangle("fill",x,y,1*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y,1*s,3*s)
			love.graphics.rectangle("fill",x+2*s,y+2*s,1*s,1*s)
		elseif ch=="0" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,3*s,1*s)
		elseif ch=="1" then
			love.graphics.rectangle("fill",x,y,2*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,3*s,1*s)
		elseif ch=="2" then
			love.graphics.rectangle("fill",x,y,1*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y,1*s,3*s)
			love.graphics.rectangle("fill",x+2*s,y+2*s,1*s,1*s)
		elseif ch=="3" then
			love.graphics.rectangle("fill",x,y,2*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,2*s,1*s)
			love.graphics.rectangle("fill",x,y+2*s,2*s,1*s)
		elseif ch=="4" then
			love.graphics.rectangle("fill",x,y,1*s,2*s)
			love.graphics.rectangle("fill",x+1*s,y+1*s,1*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y,1*s,3*s)
		elseif ch=="5" then
			love.graphics.rectangle("fill",x,y+2*s,1*s,1*s)
			love.graphics.rectangle("fill",x+1*s,y,1*s,3*s)
			love.graphics.rectangle("fill",x+2*s,y*s,1*s,1*s)
		elseif ch=="6" then
			love.graphics.rectangle("fill",x,y,1*s,1*s)
			love.graphics.rectangle("fill",x,y+1*s,3*s,2*s)
		elseif ch=="7" then
			love.graphics.rectangle("fill",x,y,3*s,1*s)
			love.graphics.rectangle("fill",x+2*s,y+1*s,1*s,2*s)
		elseif ch=="8" then
			love.graphics.rectangle("fill",x,y,3*s,3*s)
		elseif ch=="9" then
			love.graphics.rectangle("fill",x,y,3*s,2*s)
			love.graphics.rectangle("fill",x+2*s,y+2*s,1*s,1*s)
		end
	end
end

function drawString(s, space, fonts, x, y, scale)
	for i=1, string.len(s) do
		drawChar(fonts, string.char(string.byte(s,i)), x+(i-1)*3*scale+i-1, y, scale)
	--if s=="123" then print(string.char(string.byte(s,i))) end
	end
end
