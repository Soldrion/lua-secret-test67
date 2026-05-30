local file = io.open("architecture.md","r")
local count = 10

if file ~= nil then
    while count >= 0 do
        print(file:read("*line"))
        if print(file:read("*line")) == nil then
            count =- 1
        else
            count = 10
        end
    end
end

