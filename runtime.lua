timeled = Controls.timeled
gotomain = Controls.gotomainpage
gotosplash = Controls.gotosplashpage
txt = Controls.passtxt

doortimer = Timer.New()
checktimer = Timer.New()

timeled.Boolean = false

newnum = ""
thepass = "1944"

for ctl = 0, 9 do
  Controls["key"..ctl].EventHandler = function() 
      num = ctl
      newnum = newnum..num
      newnumlen = string.len(newnum)
      txt.String = newnum         
    end
end 

Controls.clear.EventHandler = function()
        newnum = ""
        txt.String = ""
end        

Controls.enter.EventHandler = function()
    if newnum == thepass then
       timeled.Boolean = true
       gotomain.Boolean = true
       newnum = ""
       txt.String = ""
       TimeInSeconds = 1
       Timer.CallAfter(function()
       gotomain.Boolean = false
       end,TimeInSeconds)
       doortimer:Start(300)
    
    if newnum == not thepass then
       txt.String = "Denied"
       TimeInSeconds = 2
       Timer.CallAfter(function()
       txt.String = ""
       newnum = ""
       end, TimeInSeconds)
    end
  end
end   


doortimer.EventHandler = function()
       timeled.Boolean = false
       newnum = ""
       txt.String = ""
       checktimer:Stop()
       gotosplash.Boolean = true
       TimeInSeconds = 1
       Timer.CallAfter(function()
       gotosplash.Boolean = false
       newnum = ""
       txt.String = ""
       end, TimeInSeconds)
end