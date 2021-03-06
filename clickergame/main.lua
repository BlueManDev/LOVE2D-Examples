lg = love.graphics

function love.load()
    target = {}
    target.x = 300
    target.y = 300
    target.radius = 50

    score = 0
    timer = 0

    gameFont = lg.newFont(40)
end

function love.draw()
    lg.setColor(1, 0, 0)
    lg.circle("fill", target.x, target.y, target.radius)

    lg.setColor(1, 1, 1)
    lg.setFont(gameFont)
    lg.print(score, 0, 0)
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        local mouseToTarget = distanceBetween(x, y, target.x, target.y)
        if mouseToTarget < target.radius then
            score = score + 1
        end
    end
end

function distanceBetween(x1, y1, x2, y2)
    return math.sqrt( (x2 - x1)^2 + (y2 - y1)^2 )
end
