# Simple UEFI Shell script file
#Ver:1.0.0
#Author:Startgo
#website:https://startgo.youp.ga
##========Reboot 3sec=====3000000 us==========

stall 3000000
if "%Counter%" le "%Counters%" then
   reset 
else 
 cp Report.log Report.%Counters%.log
 del Report.log
 cc.nsh
 echo -on
 echo Finished!
   reset -s
endif

#=======================