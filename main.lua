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
local v4 = 1
local toggle = false
local cnt = 0
function lovr.draw(Pass)
    --pass:SetShader('normal')
    cnt=cnt+1
    if cnt %50 == 0 then
        lovr.graphics.setBackgroundColor(math.random(),math.random(),math.random(),math.random())
    end
    
    
    --v1 = math.random()
    --v2= math.random()
    --v3= math.random()
    if toggle == false and v4 < -.1 then 
        v4 = v4 +.01
    end

    if (v4 > 0) and (v4 <= 1) and toggle == false then
        toggle = false
        v4 = v4 + .01
    end
    if v4 >= 1 then
        toggle = true
        v4 = v4 -.01
    end
    if toggle == true then
        v4 = v4 -.01
    end

    if toggle == false then
        v4 = v4 +.01
    end
    if v4 < 0 then
        toggle = true
        v4 = v4 -.01
    end
    --[[if v4 < -.1 then
        toggle = false
        v4 = v4 + .01
    end]]--
    if v4 < -1 and toggle == true then
        v4 = -1

        toggle = false
    end
    print(v4)
    Pass:cube(v1, v2,v3,v4,lovr.headset.getTime(),0,1,0,'line')
end
