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

local v1 = 0
local v2 = 1.7
local v3 = -1
local v4 = .5
function lovr.draw(Pass)
    --pass:SetShader('normal')


    

    --v1 = math.random()
    --v2= math.random()
    --v3= math.random()
    v4= math.random()
    Pass:SetColor(math.random(),math.random(),math.random(),math.random())
    Pass:cube(v1, v2,v3,v4,lovr.headset.getTime(),0,1,0,'line')
end

