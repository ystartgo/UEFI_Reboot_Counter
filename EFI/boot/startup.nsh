# Simple UEFI Shell script file
#Ver:1.0.0
#Author:Startgo
#website:https://startgo.youp.ga
## Check and cd startup.nsh path
echo  -off
for %b in fs0 fs1 fs2 fs3 blk0 blk1 blk2 blk3
    if exist %b:\ then
       %b:
       cd\
       goto Leave_For0
    endif
endfor
:Leave_For0
#area
cd EFI\boot\
vrt01.nsh #vrt01.nsh #All