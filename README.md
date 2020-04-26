# PiFi-Buster

Raspbian Buster has had a continued issue where connecting to WPA-Enterprise networks (ex: Eduroam) fails.

The script here (buster_wifi_fix.sh) degrades wpa_supplicant and uses the Raspbian Stretch version (I think),
fixing the problem. The script was taken from <https://lb.raspberrypi.org/forums/viewtopic.php?t=244731>.

To connect to Eduroam, you can use the script I made [here](https://github.com/jackkolb/PiFi-Eduroam)

You may need to make the script an executable before running it: `chmod +x buster_wifi_fix.sh`
