#!/bin/bash

# Function to change Termux appearance
change_appearance() {
    clear
    # Display welcome message with ASCII art
    toilet -f slant "Welcome Back" -F gay
    echo -e "\033[1;35mPOP-SMOKE Terminal - Customized! \033[0m"
    echo -e "\033[1;33mSystem Initialized successfully. \033[0m"
    sleep 2
    clear
}

# Function to change Termux color scheme
change_colors() {
    # Set custom color prompt
    echo "PS1='\033[38;5;10m[\033[38;5;11m\u\033[38;5;10m@\033[38;5;12m\h\033[38;5;10m] \033[38;5;14m\w\033[38;5;10m$ \033[0m'" >> ~/.bashrc
    source ~/.bashrc
    echo -e "\033[1;32mPrompt color has been changed!\033[0m"
}

# Function to change Termux font
change_font() {
    # Change the font style of Termux
    echo -e "\033[1;36mChanging the font style...\033[0m"
    pkg install -y termux-api
    termux-reload-settings
    echo -e "\033[1;32mFont has been changed to default.\033[0m"
}

# Function to change wallpaper
change_wallpaper() {
    clear
    echo -e "\033[1;34mChanging wallpaper...\033[0m"
    wget https://example.com/sunset.jpg -O ~/image.jpg
    termux-wallpaper ~/image.jpg
    echo -e "\033[1;32mWallpaper has been changed!\033[0m"
}

# Function to show a custom login message
show_custom_message() {
    clear
    toilet -f term -F metal "Code By Pop-Smoke"
    echo -e "\033[1;34mYour terminal is now customized!\033[0m"
    sleep 2
    clear
}

# Function to open the YouTube link
open_youtube() {
    echo -e "\033[1;33mOpening YouTube Channel...\033[0m"
    xdg-open "https://www.youtube.com/@XADAADI"
    sleep 2
}

# Function to display the main menu
show_menu() {
    clear
    figlet "Main Menu" | toilet -F border
    echo -e "\033[1;32m1. Update Termux \033[0m"
    echo -e "\033[1;33m2. Install Custom Tools \033[0m"
    echo -e "\033[1;34m3. Show System Info \033[0m"
    echo -e "\033[1;35m4. Change Wallpaper \033[0m"
    echo -e "\033[1;36m5. Change Termux Colors \033[0m"
    echo -e "\033[1;31m6. Open YouTube Channel \033[0m"
    echo -e "\033[1;31m7. Exit \033[0m"
    echo -n "Select an option: "
    read option
    case $option in
        1) update_termux ;;
        2) install_tools ;;
        3) show_system_info ;;
        4) change_wallpaper ;;
        5) change_colors ;;
        6) open_youtube ;;
        7) exit_script ;;
        *) echo -e "\033[1;31mInvalid option. Please try again.\033[0m"; sleep 2; show_menu ;;
    esac
}

# Function to update Termux
update_termux() {
    clear
    figlet "Updating..." | toilet -F border
    pkg update && pkg upgrade -y
    echo -e "\033[1;32mTermux has been updated!\033[0m"
    sleep 2
    show_menu
}

# Function to install custom tools
install_tools() {
    clear
    figlet "Installing..." | toilet -F border
    pkg install git python curl neofetch cmatrix -y
    echo -e "\033[1;32mTools have been installed!\033[0m"
    sleep 2
    show_menu
}

# Function to show system info
show_system_info() {
    clear
    figlet "System Info" | toilet -F border
    neofetch
    sleep 2
    show_menu
}

# Function to start Python
start_python() {
    clear
    figlet "Python" | toilet -F border
    python
}

# Function to exit script
exit_script() {
    clear
    figlet "Goodbye" | toilet -F border
    echo -e "\033[1;32mExiting Termux... See you later! \033[0m"
    exit 0
}

# Start the script
change_appearance
show_custom_message
show_menu
