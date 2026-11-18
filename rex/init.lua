-- pane creation using vim directions
rex.bind("ctrl+p", "client.mode.enter", { name = "spliter" })

rex.bind("spliter/h", "pane.split", { direction = "left" })
rex.bind("spliter/l", "pane.split", { direction = "right" })
rex.bind("spliter/k", "pane.split", { direction = "up" })
rex.bind("spliter/j", "pane.split", { direction = "down" })

rex.bind("cmd+shift+r", "client.mode.enter", { name = "resize" })

rex.bind("resize/h", "pane.resize", { direction = "left" })
rex.bind("resize/l", "pane.resize", { direction = "right" })
rex.bind("resize/k", "pane.resize", { direction = "up" })
rex.bind("resize/j", "pane.resize", { direction = "down" })

rex.bind("cmd+shift+f", "client.mode.enter", { name = "focus" })

rex.bind("focus/h", "pane.focus", { direction = "left" })
rex.bind("focus/l", "pane.focus", { direction = "right" })
rex.bind("focus/k", "pane.focus", { direction = "up" })
rex.bind("focus/j", "pane.focus", { direction = "down" })

