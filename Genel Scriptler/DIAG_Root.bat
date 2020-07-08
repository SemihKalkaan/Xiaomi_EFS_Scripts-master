::This script has been coded by SemihKalkan
@echo off
cls
title SemihKalkan
echo This script has been coded by SemihKalkan
echo Bu script SemihKalkan tarafindan kodlanmistir.
echo Cihazi ADB moduna alip enter tusuna basiniz.
echo Gelen ROOT izinlerini onaylayiniz.
adb shell su -c setprop sys.usb.config diag,adb
echo Well Done!
pause
exit