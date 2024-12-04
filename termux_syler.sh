#!/bin/bash

# Function-ka Login
clear
echo -e "\033[1;35mWelcome to POP-SMOKE Tool \033[0m"
echo -e "\033[1;33mPlease log in to proceed... \033[0m"
sleep 1

# Login Prompt
echo -n "Username: "
read username
echo -n "Password: "
read -s password

# Check login details (for demo, use static username/password)
if [[ "$username" == "pop" && "$password" == "smoke123" ]]; then
    echo -e "\n\033[1;32mLogin successful!\033[0m"
    sleep 1
else
    echo -e "\n\033[1;31mIncorrect username or password.\033[0m"
    exit 1
fi

# ASCII Art and Setup Termux Appearance
clear
toilet -f slant "CODED BY POP-SMOKE" -F gay
echo -e "\033[1;36mCustomizing Termux... \033[0m"
sleep 1
clear

# Display the Menu
echo -e "\033[1;34mChoose an option: \033[0m"
echo -e "\033[1;32m1. Update Termux \033[0m"
echo -e "\033[1;33m2. Install Tools \033[0m"
echo -e "\033[1;35m3. Start Python \033[0m"
echo -e "\033[1;36m4. Show System Info \033[0m"
echo -e "\033[1;31m5. Change Wallpaper \033[0m"
echo -e "\033[1;37m6. Hack Mode \033[0m"
echo -e "\033[1;32m7. Exit \033[0m"
echo -n "Select an option: "
read option

# Function-ka Doorashada
case $option in
    1)
        # Update Termux
        clear
        figlet "Updating..." | toilet -F border
        pkg update && pkg upgrade -y
        echo -e "\033[1;32mTermux is up to date!\033[0m"
        ;;
    2)
        # Install Essential Tools
        clear
        figlet "Installing..." | toilet -F border
        pkg install git python curl neofetch cmatrix -y
        echo -e "\033[1;32mEssential tools installed!\033[0m"
        ;;
    3)
        # Start Python
        clear
        figlet "Python" | toilet -F border
        echo -e "\033[1;36mStarting Python... \033[0m"
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
        echo -e "\033[1;34mChanging wallpaper... \033[0m"
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
        echo -e "\033[1;32mWallpaper changed!\033[0m"
        ;;
    6)
        # Hack Mode
        clear
        figlet "Hack Mode" | toilet -F border
        toilet -f term -F metal "Hacked!"
        sleep 1
        echo -e "\033[1;31mInitiating Hack Mode...\033[0m"
        cmatrix -C red -s
        ;;
    7)
        # Exit
        clear
        figlet "Goodbye" | toilet -F border
        echo -e "\033[1;32mExiting... See you later! \033[0m"
        exit 0
        ;;
    *)
        # Invalid option
        echo -e "\033[1;31mInvalid option. Try again.\033[0m"
        sleep 1
        exec $0
        ;;
esac
