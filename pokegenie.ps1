$menuAppraise_x=945
$menuAppriase_y=2070
$appraise_y=1685
$pokegenie_x=993
$pokegenie_y=937
$center_x=540
$center_y=1000
$dismiss_y=700
$name_y=997
$backspace_x=987
$backspace_y=1938
$gboardClip_x=544
$gboardClip_y=1497
$pasteRecent_x=332
$pasteRecent_y=1697
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

    #Long press backspace to delete name
    adb shell input swipe $backspace_x $backspace_y $backspace_x $backspace_y 2000
    
    #Touch gboard clipboard button
    adb shell input tap $gboardClip_x $gboardClip_y
    Start-Sleep -Milliseconds 250

    #Touch recent paste
    adb shell input tap $pasteRecent_x $pasteRecent_y
    Start-Sleep -Milliseconds 250

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
