function love.conf(t)
    t.identity = "data/saves"
    t.version = "11.5"
    t.console = false
    t.externalstorage = true
    t.gammacorrect = true
    t.window.title = "test"
    t.window.icon = "icon/game_icon.jpg"
    t.window.width = 800
    t.window.height = 800
    t.window.minwidth = 400
    t.window.minheight = 400
    t.window.resizable = true
    t.window.borderless = true
    t.window.fullscreen = true
    t.window.vsync = 1
end