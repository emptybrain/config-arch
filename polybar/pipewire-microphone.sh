#!/bin/bash

get_mic_default() {
    pactl get-default-source 
}

get_volume() {
    vol=$(pactl list sources | tr ' ' '\n' | grep -m1 '%')
    echo "$vol"
}

is_mic_muted() {
    mic_name="$(get_mic_default)"

    pactl get-source-mute @DEFAULT_SOURCE@  | tr ': ' '\n' | grep -m1 'yes'
}

status() {
    get_volume
    is_muted="$(is_mic_muted)"

    if [ "${is_muted}" = "yes" ]; then
        echo " muted"
    else
        echo "" "$vol"
    fi
}

listen() {
    status

    LANG=EN; pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "source" || echo "$event" | grep -q "server"; then
            status
        fi
    done
}

toggle() {
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
}


increase() {
    pactl set-source-volume @DEFAULT_SOURCE@ +5%  
}

decrease() {
    pactl set-source-volume @DEFAULT_SOURCE@ -5%
}





#case "$1" in
#    --toggle)
#        toggle
#        ;;
#    *)
#        listen
#        ;;
#esac
#

case "$1" in
    --toggle)
        toggle
        ;;
    --increase)
        increase
        ;;
    --decrease)
        decrease
        ;;
    *)
        listen
        ;;
esac
