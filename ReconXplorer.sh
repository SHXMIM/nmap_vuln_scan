#!/bin/bash
# AUTHOR: shxim
# This script provides a menu-driven interface for network scanning tasks using Nmap and arp-scan.

# VARIABLES
ip=$1
day=$(date +%A)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
reset=$(tput sgr0)

# FUNCTIONS

# Greeting the user
greeting() {
    echo -e "WELCOME ${red}$USER${reset}!. TODAY IS ${red}$day${reset}. YOU ARE USING ${red}$SHELL${reset} SHELL.\n"
}

# Display author information and important notes
AUTHOR() {
    reconxplorer_color="${blue}"
    reconxplorer_bg_color="${yellow}"
    author_color="${red}"
    author_bg_color="${green}"

    echo "  ${reconxplorer_bg_color}${reconxplorer_color}__________                           ____  ___      .__                                ${reset}"
    echo "  ${reconxplorer_bg_color}${reconxplorer_color}\______   \ ____   ____  ____   ____ \   \/  /_____ |  |   ___________   ___________   ${reset}"
    echo "  ${reconxplorer_bg_color}${reconxplorer_color} |       _// __ \_/ ___\/  _ \ /    \ \     /\____ \|  |  /  _ \_  __ \_/ __ \_  __ \  ${reset}"
    echo "  ${reconxplorer_bg_color}${reconxplorer_color} |    |   \  ___/\  \__(  <_> )   |  \/     \|  |_> >  |_(  <_> )  | \/\  ___/|  | \/  ${reset}"
    echo "  ${reconxplorer_bg_color}${reconxplorer_color} |____|_  /\___  >\___  >____/|___|  /___/\  \   __/|____/\____/|__|    \___  >__|     ${reset}"
    echo "  ${reconxplorer_bg_color}${reconxplorer_color}        \/     \/     \/           \/      \_/__|                           \/         ${reset}"
    echo -e "                                                                        ${cyan}𝒜𝓊𝓉𝒽ℴ𝓇: 𝓈𝒽𝓍𝒾𝓂${reset}\n"
}

# Display menu options
menu() {
    echo -e "${blue}MENU OPTIONS:${reset}\n"
    echo "1: ARP-scan"
    echo "2: Basic Nmap scan"
    echo "3: Connect scan"
    echo "4: Stealth scan"
    echo "5: ACK scan"
    echo "6: OS scan"
    echo "7: Service and version scan"
    echo "8: Aggressive scan"
    echo "q: Exit the tool"
    echo
    read -p "${blue}Choose an option:${reset} " opt
}

# Ask if the user wants to save the output
save_output() {
    local output=$1
    local scan_type=$2
    echo
    read -p "${yellow}Do you want to save this output? (yes/no):${reset} " save_choice
    if [[ $save_choice == "yes" || $save_choice == "y" ]]; then
        read -p "${yellow}Enter filename (default: ${scan_type}_output.txt):${reset} " filename
        filename=${filename:-"${scan_type}_output.txt"}
        echo "$output" > "$filename"
        echo -e "${green}Output saved to $filename.${reset}\n"
    fi
}

# Execute the selected option
case_stat() {
    case $opt in
        1)
            echo -e "\n${blue}Starting ARP scanning...${reset}\n"
            arpscan=$(sudo arp-scan -l)
            echo -e "${green}$arpscan${reset}"
            echo -e "\n${blue}ARP scanning completed.${reset}\n"
            save_output "$arpscan" "arp_scan"
            ;;
        2)
            read -p "${yellow}Enter an IP address:${reset} " ip
            echo -e "\n${blue}Starting basic Nmap scan...${reset}\n"
            nmapscan=$(nmap $ip)
            echo -e "${green}$nmapscan${reset}"
            echo -e "\n${blue}Basic Nmap scan completed.${reset}\n"
            save_output "$nmapscan" "basic_nmap_scan"
            ;;
        3)
            read -p "${yellow}Enter an IP address:${reset} " ip
            echo -e "\n${blue}Starting connect scan...${reset}\n"
            connectscan=$(nmap -sT $ip)
            echo -e "${green}$connectscan${reset}"
            echo -e "\n${blue}Connect scan completed.${reset}\n"
            save_output "$connectscan" "connect_scan"
            ;;
        4)
            read -p "${yellow}Enter an IP address:${reset} " ip
            echo -e "\n${blue}Starting stealth scan...${reset}\n"
            stealthscan=$(nmap -sS $ip)
            echo -e "${green}$stealthscan${reset}"
            echo -e "\n${blue}Stealth scan completed.${reset}\n"
            save_output "$stealthscan" "stealth_scan"
            ;;
        5)
            read -p "${yellow}Enter an IP address:${reset} " ip
            echo -e "\n${blue}Starting ACK scan...${reset}\n"
            ackscan=$(nmap -sA $ip)
            echo -e "${green}$ackscan${reset}"
            echo -e "\n${blue}ACK scan completed.${reset}\n"
            save_output "$ackscan" "ack_scan"
            ;;
        6)
            read -p "${yellow}Enter an IP address:${reset} " ip
            echo -e "\n${blue}Starting OS scan...${reset}\n"
            osscan=$(nmap -O $ip)
            echo -e "${green}$osscan${reset}"
            echo -e "\n${blue}OS scan completed.${reset}\n"
            save_output "$osscan" "os_scan"
            ;;
        7)
            read -p "${yellow}Enter an IP address:${reset} " ip
            echo -e "\n${blue}Starting service and version scan...${reset}\n"
            svscan=$(nmap -sV $ip)
            echo -e "${green}$svscan${reset}"
            echo -e "\n${blue}Service and version scan completed.${reset}\n"
            save_output "$svscan" "service_version_scan"
            ;;
        8)
            read -p "${yellow}Enter an IP address:${reset} " ip
            echo -e "\n${blue}Starting aggressive scan...${reset}\n"
            aggressivescan=$(nmap -A $ip)
            echo -e "${green}$aggressivescan${reset}"
            echo -e "\n${blue}Aggressive scan completed.${reset}\n"
            save_output "$aggressivescan" "aggressive_scan"
            ;;
        q)
            echo -e "\nExiting... ${red}Goodbye!${reset}\n"
            exit 0
            ;;
        *)
            echo -e "\n${red}Invalid option! Please try again.${reset}\n"
            ;;
    esac
}

# MAIN SCRIPT
greeting
AUTHOR

# Loop to repeat the menu until the user exits
while true; do
    menu
    case_stat
    echo
    read -p "${yellow}Do you want to continue? (yes/no): ${reset}" choice
    if [[ $choice != "yes" && $choice != "y" ]]; then
        echo -e "\nExiting... ${red}Goodbye!${reset}\n"
        break
    fi
done
