@echo
adb devices 
adb shell am start -a android.media.action.STILL_IMAGE_CAMERA
mkdir testfolder2
TIMEOUT -T 3
adb shell screencap -p /sdcard/testfolder2/44421.png #working
adb shell input keyevent 3 #working 
adb pull /sdcard/testfolder2/44421.png C:\Users\Franzoli\Desktop
adb shell cmd device_config put privacy camera_mic_icons_enabled true 
adb shell rmdir testfolder2
adb shell rm /sdcard/testfolder2/44421.png
taskkill /IM cmd.exe