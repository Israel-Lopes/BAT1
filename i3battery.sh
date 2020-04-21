#!/bin/bash

#-----------------------(Capacity Battery)------------------------

#I3CAPACITY=$(cat i3capacity)

# Remove cursor
setterm -cursor off

while true
do
    #Capacity battery in system
    BATTERYCAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)
    
    # ( Battery 10% ) #
    if [ "$BATTERYCAPACITY" -ge "1" ] && [ "$BATTERYCAPACITY" -le "10" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "█---------" > i3capacity
    fi
    
    # ( Battery 20% ) #
    if [ "$BATTERYCAPACITY" -ge "10" ] && [ "$BATTERYCAPACITY" -le "20" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "██--------" > i3capacity
    fi
    
    # ( Battery 30% ) #
    if [ "$BATTERYCAPACITY" -ge "20" ] && [ "$BATTERYCAPACITY" -le "30" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "███-------" > i3capacity
    fi
    
    # ( Battery 40% ) #
    if [ "$BATTERYCAPACITY" -ge "30" ] && [ "$BATTERYCAPACITY" -le "40" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "████------" > i3capacity
    fi
    
    # ( Battery 50% ) #
    if [ "$BATTERYCAPACITY" -ge "40" ] && [ "$BATTERYCAPACITY" -le "50" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "█████-----" > i3capacity
    fi
    
    # ( Battery 60% ) #
    if [ "$BATTERYCAPACITY" -ge "50" ] && [ "$BATTERYCAPACITY" -le "60" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "██████----" > i3capacity
    fi
    
    # ( Battery 70% ) #
    if [ "$BATTERYCAPACITY" -ge "60" ] && [ "$BATTERYCAPACITY" -le "70" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "███████---" > i3capacity
    fi
    
    # ( Battery 80% ) #
    if [ "$BATTERYCAPACITY" -ge "70" ] && [ "$BATTERYCAPACITY" -le "80" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "████████--" > i3capacity
    fi
    
    # ( Battery 90% ) #
    if [ "$BATTERYCAPACITY" -ge "80" ] && [ "$BATTERYCAPACITY" -le "90" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "█████████-" > i3capacity
    fi
    
    # ( Battery 100% ) #
    if [ "$BATTERYCAPACITY" -ge "90" ] && [ "$BATTERYCAPACITY" -le "100" ]; then
    
        cat /sys/class/power_supply/BAT1/uevent | awk '{split($0,a,"=");
            split(a[2],b," ");
            (a[3] == "Charging" || b[1] == "Charging") ? $5 = "Charging" : $5 = (a[3] + b[1])/2;
            print a[1] "=" $5}' > .uevent
        
        echo "██████████" > i3capacity
    fi

    clear
    
    echo Battery
    cat i3capacity
    
    sleep 5
done
