lg = love.graphics

function love.load()
	gameFont = lg.newFont(40)
end

function love.draw()
	lg.setFont(gameFont)
	lg.print("Hello World!", 0, 0)
end
