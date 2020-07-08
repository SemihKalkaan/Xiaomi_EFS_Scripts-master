::This script has been coded by SemihKalkan
@echo off
cls
title SemihKalkan 
echo This script has been coded by SemihKalkan
echo Bu script SemihKalkan tarafindan kodlanmistir.
echo Cihazi TWRP moduna alip enter tusuna basiniz.
pause
echo ADB servisleri kapatiliyor...
adb kill-server
cls
echo Mevcut ADB servisleri kapatildi.
echo ADB servisleri yeniden baslatiliyor...
adb start-server
cls
echo Silme islemi baslatiliyor, lutfen sabirli ol.
echo MODEMST1 siliniyor...
adb shell dd if=/dev/zero of=/dev/block/mmcblk0p47
echo MODEMST2 siliniyor...
adb shell dd if=/dev/zero of=/dev/block/mmcblk0p48
echo FSC siliniyor...
adb shell dd if=/dev/block/mmcblk0p59 of=/sdcard/EFS/fsg
echo FSG siliniyor...
adb shell dd if=/dev/zero of=/dev/block/mmcblk0p17
echo EFS silindi, islem tamamlandi.
echo Well Done - SemihKalkan
pause
exit