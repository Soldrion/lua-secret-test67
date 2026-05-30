--local mod =  require("test")
--model = lovr.graphics.newModel('data/model.obj')
--[[
function lovr.load()
    model = lovr.graphics.newModel('data/model.obj')
end

function lovr.update(dt)
    number = number +1
end
]]--
function lovr.draw(pass)
    --pass:SetShader('normal')
    pass:cube(0, 1.7,-1,.5,lovr.headset.getTime(),0,1,0,'line')
end