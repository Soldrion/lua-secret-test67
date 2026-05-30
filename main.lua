local mod =  require("test")
_G.love = require("love")


function love.load()
    _G.number = 0
end

function love.update(dt)
    number = number +1
end

function love.draw()
    love.graphics.print(number)
end

function main()
    print(mod.sum(10,5))
    mod.sayHello("Sigma")
    
    return 0
end



main()