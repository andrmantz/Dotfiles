#!/bin/env bash
 
lock=""
logout=""
shutdown=""
reboot=""
 
selected_option=$(echo "$lock
$logout
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
		  -theme "~/.config/rofi/powermenu/powermenu.rasi")

if [ "$selected_option" == "$lock" ]
then
    loginctl lock-session
elif [ "$selected_option" == "$logout" ]
then
    loginctl terminate-user `whoami`
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
fi
