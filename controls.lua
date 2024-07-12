
table.insert(ctrls, {
  Name = "passtxt",
  ControlType = "Text",
  DefaultValue = "****",
  Count = 1
})

table.insert(ctrls, {
  Name = "clear",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})

table.insert(ctrls, {
  Name = "enter",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1
})

table.insert(ctrls, {
  Name = "timeled",
  ControlType = "Indicator",
  IndicatorType = "LED",
  Count = 1
})

table.insert(ctrls, {
  Name = "gotomainpage",
  ControlType = "Indicator",
  IndicatorType = "LED",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})

table.insert(ctrls, {
  Name = "gotosplashpage",
  ControlType = "Indicator",
  IndicatorType = "LED",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})

for x = 0, 9 do 
  table.insert(ctrls, {
    Name = "key"..string.format("%d",x),
    ControlType = "Button",
    ButtonType = "Trigger",
    Count = 1  
  })
  end

