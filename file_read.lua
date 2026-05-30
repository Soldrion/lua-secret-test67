local file = io.open("architecture.md","r")
local count = 10

if file ~= nil then
    while count > 0 do
        print(file:read("*line"),"\n")
        if file:read("*line") == nil then
            count =- 1
            print"\n"
        else
            count = 10
        end
    end
end

