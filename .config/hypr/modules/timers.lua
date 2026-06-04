-- Random Wallpaper every X interval --
hl.timer(function()
    hl.exec_cmd("/home/will/.config/scripts/change-wallpaper.sh")
end, { timeout = 3600000, type = "repeat" })
