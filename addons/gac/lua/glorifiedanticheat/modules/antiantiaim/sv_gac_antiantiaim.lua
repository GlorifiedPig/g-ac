local
_={_="gAC_AimbotDetected",a="Meth_HVH_Threshold"}if!gAC.config.ANTI_ANTIAIM
then
return
end
local
a,b,c,d,e=CurTime,IsValid,hook.Add,math.abs,{["weapon_physgun"]=!!1,["gmod_tool"]=!!1,["weapon_physcannon"]=!!1,["gmod_camera"]=!!1}c("StartCommand","gAC.AntiAntiAim",function(c,d)if
c:InVehicle()||c[_._]||!c:Alive()||c:GetObserverMode()~=OBS_MODE_NONE||c:IsBot()||!b(c)||c:IsTimingOut()||c:PacketLoss()>80
then
return
end
if
c.JoinTimeGAC==nil||!(a()>=c.JoinTimeGAC+25)||c.PlayerFullyAuthenticated~=!!1
then
return
end
if
b(c:GetActiveWeapon())&&e[c:GetActiveWeapon():GetClass()]then
return
end
if!c[_.a]then
c[_.a]=0
end
local
f=d:GetViewAngles()local
d,g,h=f.p,f.y,f.r
if
d>180||d<-180||g>180||g<-180||h>180||h<-180
then
if
c[_.a]>20
then
c[_._]=!!1
gAC.AddDetection(c,"Anti-Aim Detected [Code 129]",gAC.config.ANTIAIM_PUNISHMENT,gAC.config.ANTIAIM_BANTIME)return
else
c[_.a]=c[_.a]+1
end
elseif
c[_.a]>0
then
c[_.a]=c[_.a]-1
end
end)