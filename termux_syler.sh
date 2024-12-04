#!/bin/bash

# Dhisida ASCII art Intro
clear
toilet -f slant "CODED BY POP-SMOKE" -F gay
echo ""
echo -e "\033[1;32m WELCOME TO POP-SMOKE TOOL \033[0m"
echo -e "\033[1;35m Let's make Termux more fun! \033[0m"
sleep 1
clear

# Qurxinta ASCII Art loading effect
echo -e "\033[1;33m Loading... \033[0m"
cmatrix -C green -s -u 10
clear

# Menu Options
echo -e "\033[1;36m1. Update Termux \033[0m"
echo -e "\033[1;32m2. Install Essential Tools \033[0m"
echo -e "\033[1;34m3. Start Python \033[0m"
echo -e "\033[1;31m4. Show System Info \033[0m"
echo -e "\033[1;35m5. Change Wallpaper \033[0m"
echo -e "\033[1;37m6. Hack Mode \033[0m"
echo -e "\033[1;33m7. Exit \033[0m"
echo ""
echo -n "Choose an option: "
read option

# Function-ka doorashada
case $option in
    1)
        # Update Termux
        clear
        figlet "Updating..." | toilet -F border
        pkg update && pkg upgrade -y
        echo -e "\033[1;32m Termux has been updated successfully! \033[0m"
        sleep 1
        ;;
    2)
        # Install Essential Tools
        clear
        figlet "Installing..." | toilet -F border
        pkg install git python curl nano neofetch cmatrix -y
        echo -e "\033[1;32m Essential tools have been installed! \033[0m"
        sleep 1
        ;;
    3)
        # Start Python
        clear
        figlet "Python" | toilet -F border
        echo -e "\033[1;36m Starting Python... \033[0m"
        sleep 1
        python
        ;;
    4)
        # Show System Info
        clear
        figlet "System Info" | toilet -F border
        neofetch
        ;;
    5)
        # Change Wallpaper
        clear
        figlet "Wallpaper" | toilet -F border
        echo -e "\033[1;34m Changing wallpaper... \033[0m"
        echo "Choose wallpaper:"
        echo "1. Sunset"
        echo "2. Nature"
        read wallpaper_choice
        if [ $wallpaper_choice -eq 1 ]; then
            wget https://example.com/sunset.jpg -O ~/image.jpg
        else
            wget https://example.com/nature.jpg -O ~/image.jpg
        fi
        termux-wallpaper ~/image.jpg
        echo -e "\033[1;32m Wallpaper changed successfully! \033[0m"
        ;;
    6)
        # Hack Mode
        clear
        figlet "Hack Mode" | toilet -F border
        toilet -f term -F metal "Hacked!"
        sleep 1
        echo -e "\033[1;31m Initiating Hacking Mode... \033[0m"
        cmatrix -C red -s
        ;;
    7)
        # Exit
        clear
        figlet "Goodbye" | toilet -F border
        echo -e "\033[1;32m Exiting... Termux ka bixi. \033[0m"
        sleep 1
        exit 0
        ;;
    *)
        # Invalid option
        clear
        echo -e "\033[1;31m Invalid option. Please try again. \033[0m"
        sleep 1
        exec $0
        ;;
esac
