$menuAppraise_x=945
$menuAppriase_y=2070
$appraise_y=1685
$pokegenie_x=993
$pokegenie_y=937
$center_x=540
$center_y=1000
$dismiss_y=700
$name_y=997
$ok_x=964
$ok_y=1361
$nicknameok_y=1237
$swipestart_x=900
$swipeend_x=100
$swipe_y=1330
$swipe_ms=300

function Rename-Pokemon
{
    #Open menu for Appraise
    adb shell input tap $menuAppraise_x $menuAppriase_y
    Start-Sleep -Milliseconds 500

    #Tap Appraise
    adb shell input tap $menuAppraise_x $appraise_y
    Start-Sleep -Milliseconds 700

    #Dismiss Hello dialog
    adb shell input tap $menuAppraise_x $appraise_y
    Start-Sleep -Milliseconds 500

    #Open Pokegenie
    adb shell input tap $pokegenie_x $pokegenie_y
    Start-Sleep -Milliseconds 1000

    #Dismiss Pokegenie
    adb shell input tap $center_x $dismiss_y
    Start-Sleep -Milliseconds 500

    #Tap name
    adb shell input tap $center_x $name_y
    Start-Sleep -Milliseconds 500

    #Paste clipboard
    adb shell input keyevent 279

    #Tap OK to confirm on keyboard input
    adb shell input tap $ok_x $ok_y
    Start-Sleep -Milliseconds 300

    #Tap OK in pogo
    adb shell input tap $center_x $nicknameok_y
    Start-Sleep -Milliseconds 750

    #Swipe to next pokemon
    adb shell input swipe $swipestart_x $center_y $swipeend_x $center_y $swipe_ms
    Start-Sleep -Milliseconds 300
}

while ($true)
{
    Rename-Pokemon
}