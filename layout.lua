
table.insert(graphics,{
  Type = "Text",
  Text = "Build Info",
  FontSize = 12,
  HTextAlign = "Left",
  Position = {0, 100},
  Size = {62, 60}
})
table.insert(graphics,{
  Type = "Text",
  Text = "v" .. PluginInfo.BuildVersion,
  FontSize = 12,
  HTextAlign = "Left",
  Position = {0, 140},
  Size = {62, 20}
})
table.insert(graphics,{
  Type="Image",
  Image=sig,
  Position={0, 95},
  Size={20,23}
  })

table.insert(graphics,{
  Type="Image",
  Image=felogo,
  Position={140,120},
  Size={175,40}
  })



  layout["passtxt"] = {
    PrettyName = "passtext",
    Style = "Text",
    FontSize = 12,
    TextBoxStyle = "Normal",
    Position = {100, 10},
    Size = {75, 30}
  }

  layout["timeled"] = {
    PrettyName = "time",
    Style = "Led",
    Color={0,255,0},
    OffColor={255,0,0},
    UnlinkOffColor=true,
    Position = {75,10},
    Size = {20,20}
  }

  layout["enter"] = {
    PrettyName = "enter",
    Style = "Button",
    Legend = "Enter",
    Position = {0, 10},
    Size = {30, 20}
  }

  layout["clear"] = {
    PrettyName = "clear",
    Style = "Button",
    Legend = "Clear",
    Position = {0, 30},
    Size = {30, 20}
  }

  layout["gotomainpage"] = {
    PrettyName = "goto-main page",
    Style = "Led",
    Position = {0,0},
    Size = {1,1}
  }

  layout["gotosplashpage"] = {
    PrettyName = "goto-splash page",
    Style = "Led",
    Position = {0,0},
    Size = {1,1}
  } 

  
  for x = 0, 9 do
    layout["key".. string.format("%d",x)] = {
        PrettyName = "n"..string.format("%d",x),
        Legend = ""..string.format("%d",x),
        Color = {0,255,127},
        FontSize = 12,
        Style = "Button",
        ButtonStyle = "Trigger",
        Position = {0 + 20 * x, 50},
        Size = {20, 20}
    }
    end

  