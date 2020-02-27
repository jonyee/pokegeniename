# pokegeniename
Automate renaming pokemon in pokemon go with pokegenie

## Requirements ##

* Powershell
* Android device with adb enabled and working

## Setup ##

Settings changes you may want to change on your phone:

* Enable do-not-disturb (so phone calls/notifications don't mess up Pokegenie)
* Disable night mode (pokegenie seems to work fine on my phone with this on but who knows)
* Lengthen the screen timeout (there's an option to not lock the phone if actively adb debugging if you want)

## How to Use ##

Download the powershell script and update all the coordinates with the appropriate coordinates for your phone.  I wrote this to the exact coordinates for my phone (OnePlus 6T), and unless you happen to have the exact same phone this script will probably not work for you.

You can enable touch coordinates in the Android developer menu: https://developer.android.com/studio/debug/dev-options#input

Go through the steps and fix the x/y coordinates on your phone in the script so that the touch input works as expected.

You can run the powershell script and CTRL+C it to stop it if it starts mis-clicking or if it's done.

Regardless of all of this, this script is fragile, so keep your phone near you while it's running.  I have had pogo crash while doing this and the script will start clicking everywhere in your launcher, so be prepared to kill it.
