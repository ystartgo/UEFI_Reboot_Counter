# Simple UEFI Shell script file
#Ver:1.0.0
#Author:Startgo
#website:https://startgo.youp.ga
##Main scripts
#set Startup delay time for 0 sec
#=======================
set StartupDelay 0
#=======================
vtc.nsh ##counters##
# if Counter not set 
#======================= 
if "%Counter%" == "" then
  set Counter 1
endif
#=======================
if exist %cwd%Report.log then
     type Report.log
endif 
#=======================
vrt02.nsh #date
vrt03.nsh #time
vrt04.nsh #Version
vrt05.nsh #counter
vrt06.nsh #PCI
#=======================

# set Counter+1
#===========1%Counter%=Can be set value ex 20000===========
for %a run (%Counter% 1%Counter%)
  set Counter+1 %a
  if "%Counter%" ne "%a" then
    goto Leave_For
  endif
endfor
#=======================
  
#Wait for 3 sec then system warm reboot
#=======================
:Leave_For
echo Loop Cycle = %Counter%
 set Counter %Counter+1%
 set -d Counter+1
 echo "If want to clean data use cc.nsh" 
 echo "%HThank you.” “%VByeBye:) %N"
rt00.nsh #reboot