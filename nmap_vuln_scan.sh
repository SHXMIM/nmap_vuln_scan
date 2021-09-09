#! /bin/bash
#AUTHOR=shxim
#variables
ip=$1
day=$(date +%A)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
reset=$(tput sgr0)

#greeting
greeting ()
{
echo -e " 𝘞𝘌𝘓𝘊𝘖𝘔𝘌 ${red} $USER ${reset}!!!"
}

#AUTHOR
AUTHOR()
{
echo "                                                                           ${yellow}* * * * * * * * * * * * * * * * * * * * * * * * * *${reset}"
echo "                                                                           ${yellow}*                                                 *${reset}"
echo "                                                                           ${yellow}*                                                 *${reset}"
echo "                                                                           ${yellow}*                                                 *${reset}"
echo "                                                                           ${yellow}*${reset}  ${blue}:'######::'##::::'##::::'${reset}${cyan}###::::'########::${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}  ${blue}'##... ##: ###::'###:::'${reset}${cyan}## ##::: ##.... ##:${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}   ${blue}##:::..:: ####'####::'${reset}${cyan}##:. ##:: ##:::: ##:${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}  ${blue}. ######:: ## ### ##:'${reset}${cyan}##:::. ##: ########::${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}  ${blue}:..... ##: ##. #: ##:${reset}${cyan} #########: ##.....:::${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}  ${blue}'##::: ##: ##:.:: ##${reset}${cyan}: ##.... ##: ##::::::::${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}  ${blue}. ######:: ##:::: #${reset}${cyan}#: ##:::: ##: ##::::::::${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}  ${blue}:......:::..:::::.${reset}${cyan}.::..:::::..::..:::::::::${reset}    ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}                                                 ${yellow}*${reset}"
echo "                                                                           ${yellow}*${reset}                                                 ${yellow}*${reset}"
echo "                                                                           $yellow*${reset}                                   ${red}𝒜𝓊𝓉𝒽ℴ𝓇: 𝓈𝒽𝓍𝒾𝓂${reset} ${yellow}*${reset}"
echo "                                                                           ${yellow}* * * * * * * * * * * * * * * * * * * * * * * * * *${reset}"
}

#menu
menu ()
{
  echo "${red}1${reset} :𝘼𝙧𝙥-𝙨𝙘𝙖𝙣"
  echo "${red}2${reset} :𝘽𝙖𝙨𝙞𝙘 𝙣𝙢𝙖𝙥 𝙨𝙘𝙖𝙣"
  echo "${red}3${reset} :𝘾𝙤𝙣𝙣𝙚𝙘𝙩 𝙨𝙘𝙖𝙣"
  echo "${red}4${reset} :𝙎𝙩𝙚𝙖𝙡𝙩𝙝 𝙨𝙘𝙖𝙣"
  echo "${red}5${reset} :𝘼𝙘𝙠 𝙨𝙘𝙖𝙣"
  echo "${red}6${reset} :𝙤𝙨 𝙨𝙘𝙖𝙣"
  echo "${red}7${reset} :𝙨𝙚𝙧𝙫𝙞𝙘𝙚 𝙖𝙣𝙙 𝙫𝙚𝙧𝙨𝙞𝙤𝙣 𝙨𝙘𝙖𝙣"
  read -p "${red}𝑐ℎ𝑜𝑜𝑠𝑒 𝑎𝑛 𝑜𝑝𝑡𝑖𝑜𝑛 :${reset}" opt
}

#case_stat
case_stat ()
{
  case $opt in
    1 )
    echo "${blue}********************𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 𝙖𝙧𝙥 𝙨𝙘𝙖𝙣𝙣𝙞𝙣𝙜********************${reset}"
      arpscan=$(arp-scan -l)
      echo "${green}$arpscan${reset}"
      echo "${blue}********************𝘼𝙧𝙥 𝙨𝙘𝙖𝙣𝙣𝙞𝙣𝙜 𝙞𝙨 𝙛𝙞𝙣𝙞𝙨𝙝𝙚𝙙******************${reset}";;
      2 )
      read -p "${yellow}𝐸𝑛𝑡𝑒𝑟 𝑎𝑛 𝑖𝑝 𝑎𝑑𝑑𝑟𝑒𝑠𝑠${reset} :" ip
      nmapscan=$(nmap $ip)
      echo "${blue}********************𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 𝙗𝙖𝙨𝙞𝙘 𝙣𝙢𝙖𝙥 𝙨𝙘𝙖𝙣********************${reset}"
      echo "${green}$nmapscan${reset}"
      echo "${blue}********************𝘽𝙖𝙨𝙞𝙘 𝙣𝙢𝙖𝙥 𝙨𝙘𝙖𝙣 𝙞𝙨 𝙛𝙞𝙣𝙞𝙨𝙝𝙚𝙙********************${reset}";;
      3 )
      read -p "${yellow}𝐸𝑛𝑡𝑒𝑟 𝑎𝑛 𝑖𝑝 𝑎𝑑𝑑𝑟𝑒𝑠𝑠${reset} :" ip
      connectscan=$(nmap -sT $ip)
      echo "${blue}********************𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 𝙘𝙤𝙣𝙣𝙚𝙘𝙩 𝙨𝙘𝙖𝙣********************${reset}"
      echo "${green}$connectscan${reset}"
      echo "${blue}********************𝘾𝙤𝙣𝙣𝙚𝙘𝙩 𝙨𝙘𝙖𝙣 𝙞𝙨 𝙛𝙞𝙣𝙞𝙨𝙝𝙚𝙙******************${reset}";;
      4 )
      read -p "${yellow}𝐸𝑛𝑡𝑒𝑟 𝑎𝑛 𝑖𝑝 𝑎𝑑𝑑𝑟𝑒𝑠𝑠${reset} :" ip
      Stealthscan=$(nmap -sS $ip)
      echo "${blue}********************𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 𝙨𝙩𝙚𝙖𝙡𝙩𝙝 𝙨𝙘𝙖𝙣********************${reset}"
      echo "${green}$Stealthscan${reset}"
      echo "${blue}*********************𝙎𝙩𝙚𝙖𝙡𝙩𝙝𝙨𝙘𝙖𝙣 𝙞𝙨 𝙛𝙞𝙣𝙞𝙨𝙝𝙚𝙙********************${reset}";;
      5 )
      read -p "${yellow}𝐸𝑛𝑡𝑒𝑟 𝑎𝑛 𝑖𝑝 𝑎𝑑𝑑𝑟𝑒𝑠𝑠${reset} :" ip
      ackscan=$(nmap -sA $ip)
      echo "${blue}********************𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 𝙖𝙘𝙠 𝙨𝙘𝙖𝙣********************${reset}"
      echo "${green}$ackscan${reset}"
      echo "${blue}********************𝘼𝙘𝙠 𝙨𝙘𝙖𝙣 𝙞𝙨 𝙛𝙞𝙣𝙞𝙨𝙝𝙚𝙙******************${reset}";;
      6 )
      read -p "${yellow}𝐸𝑛𝑡𝑒𝑟 𝑎𝑛 𝑖𝑝 𝑎𝑑𝑑𝑟𝑒𝑠𝑠${reset} :" ip
      osscan=$(nmap -O $ip)
      echo "${blue}*********************𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 𝙤𝙨 𝙨𝙘𝙖𝙣**********************${reset}"
      echo "${green}$osscan${reset}"
      echo "${blue}*********************𝙊𝙨 𝙨𝙘𝙖𝙣 𝙞𝙨 𝙛𝙞𝙣𝙞𝙨𝙝𝙚𝙙********************${reset}";;
      7 )
      read -p "${yellow}𝐸𝑛𝑡𝑒𝑟 𝑎𝑛 𝑖𝑝 𝑎𝑑𝑑𝑟𝑒𝑠𝑠${reset} :" ip
      svscan=$(nmap -sV $ip)
      echo "${blue}********************𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 𝙨𝙚𝙧𝙫𝙞𝙘𝙚 𝙫𝙚𝙧𝙨𝙞𝙤𝙣 𝙨𝙘𝙖𝙣𝙣𝙞𝙣𝙜********************${reset}"
      echo "${green}$svscan${reset}"
      echo "${blue}******************𝙨𝙚𝙧𝙫𝙞𝙫𝙚 𝙫𝙚𝙧𝙨𝙞𝙤𝙣 𝙨𝙘𝙖𝙣𝙣𝙞𝙣𝙜 𝙞𝙨 𝙛𝙞𝙣𝙞𝙨𝙝𝙚𝙙*******************${reset}";;
  esac
}

#main_scripts

greeting
AUTHOR
menu
case_stat
