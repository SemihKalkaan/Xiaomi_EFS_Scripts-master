::This script has been coded by SemihKalkan
@echo off
cls
title SemihKalkan
echo This script has been coded by SemihKalkan
echo Bu script SemihKalkan tarafindan kodlanmistir.
echo Cihazi TWRP moduna alip enter tusuna basiniz.
echo Cihazin sifrelemesinin kapali, dahili depolamanin acik oldugundan emin olunuz.
pause
echo ADB servisleri kapatiliyor...
adb kill-server
cls
echo Mevcut ADB servisleri kapatildi.
echo ADB servisleri yeniden baslatiliyor...
adb start-server
cls
echo Yedekleme islemi baslatiliyor, lutfen sabirli ol.
echo MODEMST1 yedekleniyor...
adb shell dd if=/dev/block/mmcblk0p47 of=/sdcard/EFS/modemst1 bs=4096
echo MODEMST2 yedekleniyor...
adb shell dd if=/dev/block/mmcblk0p48 of=/sdcard/EFS/modemst2 bs=4096
echo FSC yedekleniyor...
adb shell dd if=/dev/block/mmcblk0p59 of=/sdcard/EFS/fsg bs=4096
echo FSG yedekleniyor...
adb shell dd if=/dev/block/mmcblk0p17 of=/sdcard/EFS/fsc bs=4096
echo EFS yedekleme islemi tamamlandi, bilgisayara yedekleniyor...
adb pull /sdcard/EFS
cls
echo EFS program klasorune yedeklenmistir.
echo Well Done - SemihKalkan
pause
exit