#!/usr/bin/env bash

#Colors
reset="$(tput sgr0)"
#black="$(tput bold; tput setaf 0)"
blue="$(tput bold; tput setaf 4)"
cyan="$(tput bold; tput setaf 6)"
green="$(tput bold; tput setaf 2)"
purple="$(tput bold; tput setaf 5)"
#red="$(tput bold; tput setaf 1)"
#white="$(tput bold; tput setaf 7)"
#yellow="$(tput bold; tput setaf 3)"
orange="$(tput bold; tput setaf 166)"
#violet="$(tput bold; tput setaf 61)"
host="${blue}$HOSTNAME${reset}"
#header="${cyan}[ ${reset}${green}${reset}${cyan}mattscript @ ${reset}${host}${cyan} ]    ${reset}"

#Arguments
version=${cyan}1.0.0${reset}

license="
${cyan}${reset} mattscript v${version}

        ${purple}Copyright (C) 2018 Matthew A. Brassey${reset}

        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.
"

help="
${cyan}Usage:${cyan}${green} ./mattscript.sh ${reset}${purple}[--help|--version]${reset}

${cyan}[options]${reset}${green}
        --license       Show lisense information.
        --about         What is mattscript?${reset}
"

about="
${cyan}${reset} mattscript v${version}

        Is my template for new bash scripts. 
"

#Variables
args=("$@")
endscript="false"
minutes="1"
month=$(date +%b)
today=$(date +%d)

#Expenses 
mortgage='$1,370'
hoa='100'
elec='130'
water='30'
gas='20'
sewer='10'
trash='7'
signature='250'
title='220'
citi='100'
barclay='100'
chase='100'

#Dates
mortdate="02"
hoadate="02"
elecdate="15"
waterdate="12"
gasdate="28"
sewerdate="01"
trashdate="09"
sigdate="18"
titledate="18"
citidate="7"
barcdate="8"
chasedate="9"

# [Green] make sure you've paid it [Orange] prepare to pay it
if [["$mortdate" -lt "$today"]]
   then
   mortdate1="${orange}✗ $month $mortdate${reset}"
   mortprice="${orange}$mortgage$(reset)"
   else
   mortdate1="${green}✔ $month $mortdate${reset}"
   mortprice="${green}$mortgage${reset}"
fi

if [["$hoadate" -lt "$today"]]
   then
   hoadate1="${orange}✗ $month $hoadate${reset}"
   hoaprice="${orange}$hoa${reset}"
   else
   hoadate1="${green}✔ $month $hoadate${reset}"
   hoaprice="${green}$hoa${reset}"
fi

if [["$elecdate" -lt "$today"]]
   then
   elecdate1="${orange}✗ $month $elecdate${reset}"
   elecprice="${orange}$elec${reset}"
   else
   elecdate1="${green}✔ $month $elecdate${reset}"
   elecprice="${green}$elec${reset}"
fi

if [["$waterdate" -lt "$today"]]
   then
   waterdate1="${orange}✗ $month $waterdate${reset}"
   waterprice="${orange}$water${reset}"
   else
   waterdate1="${green}✔ $month $waterdate${reset}"
   waterprice="${green}$water${reset}"
fi

if [["$gasdate" -lt "$today"]]
   then
   gasdate1="${orange}✗ $month $gasdate${reset}"
   gasprice="${orange}$gas${reset}"
   else
   gasdate1="${green}✔ $month $gasdate${reset}"
   gasprice="${green}$gas${reset}"
fi

if [["$sewerdate" -lt "$today"]]
   then
   sewerdate1="${orange}✗ $month $sewerdate${reset}"
   sewerprice="${orange}$sewer${reset}"
   else
   sewerdate1="${green}✔ $month $sewerdate${reset}"
   sewerprice="${green}$sewer${reset}"
fi

if [["$trashdate" -lt "$today"]]
   then
   trashdate1="${orange}✗ $month $trashdate${reset}"
   trashprice="${orange}$trash${reset}"
   else
   trashdate1="${green}✔ $month $trashdate${reset}"
   trashprice="${green}$trash${reset}"
fi

if [["$sigdate" -lt "$today"]]
   then
   sigdate1="${orange}✗ $month $sigdate${reset}"
   sigprice="${orange}$signature${reset}"
   else
   sigdate1="${green}✔ $month $sigdate${reset}"
   sigprice="${green}$signature${reset}"
fi

if [["$titledate" -lt "$today"]]
   then
   titledate1="${orange}✗ $month $titledate${reset}"
   titleprice="${orange}$title${reset}"
   else
   titledate1="${green}✔ $month $titledate${reset}"
   titleprice="${green}$title${reset}"
fi

if [["$citidate" -lt "$today"]]
   then
   citidate1="${orange}✗ $month $citidate${reset}"
   citiprice="${orange}$citi${reset}"
   else
   citidate1="${green}✔ $month $citidate${reset}"
   citiprice="${green}$citi${reset}"
fi

if [["$barcdate" -lt "$today"]]
   then
   barcdate1="${orange}✗ $month $barcdate${reset}"
   barcprice="${orange}$barclay${reset}"
   else
   barcdate1="${green}✔ $month $barcdate${reset}"
   barcprice="${green}$barclay${reset}"
fi

if [["$chasedate" -lt "$today"]]
   then
   chasedate1="${orange}✗ $month $chasedate${reset}"
   chaseprice="${orange}$chase${reset}"
   else
   chasedate1="${green}✔ $month $chasedate${reset}"
   chaseprice="${green}$chase${reset}"
fi

home1="${cyan}[ ${reset}${blue}Mortgage:${reset}${orange} $mortprice${reset}${cyan} ]────────────────────╼[ ${reset}$mortdate1${cyan} ]${reset}"
home2="${cyan}[ ${reset}${blue}HOA:${reset}${orange} $hoaprice${reset}${cyan} ]──────────────────────────╼[ ${reset}$hoadate1${cyan} ]${reset}"
home3="${cyan}[ ${reset}${blue}Electric:${reset}${orange} $elecprice${reset}${cyan} ]────────────────────╼[ ${reset}$elecdate1${cyan} ]${reset}"
home4="${cyan}[ ${reset}${blue}Water:${reset}${orange} $waterprice${reset}${cyan} ]───────────────────────╼[ ${reset}$waterdate1${cyan} ]${reset}"
home5="${cyan}[ ${reset}${blue}Gas:${reset}${orange} $gasprice${reset}${cyan} ]────────────────────────╼[ ${reset}$gasdate1${cyan} ]${reset}"
home6="${cyan}[ ${reset}${blue}Sewer:${reset}${orange} $sewerprice${reset}${cyan} ]─────────────────────╼[ ${reset}$sewerdate1${cyan} ]${reset}"
home7="${cyan}[ ${reset}${blue}Trash:${reset}${orange} $trashprice${reset}${cyan} ]─────────────────────╼[ ${reset}$trashdate1${cyan} ]${reset}"
home8="${cyan}[ ${reset}${blue}Signature:${reset}${orange} $sigprice${reset}${cyan} ]────────────╼[ ${reset}$sigdate1${cyan} ]${reset}"
home9="${cyan}[ ${reset}${blue}Title:${reset}${orange} $titleprice${reset}${cyan} ]─────────────────╼[ ${reset}$titledate1${cyan} ]${reset}"
home10="${cyan}[ ${reset}${blue}Citi:${reset}${orange} $titleprice${reset}${cyan} ]──────────────────────╼[ ${reset}$citidate1${cyan} ]${reset}"
home11="${cyan}[ ${reset}${blue}Barclay:${reset}${orange} $barcprice${reset}${cyan} ]────────────────────╼[ ${reset}$barcdate1${cyan} ]${reset}"
home12="${cyan}[ ${reset}${blue}Chase:${reset}${orange} $chaseprice${reset}${cyan} ]───────────────────────╼[ ${reset}$chasedate1${cyan} ]${reset}"
IFS='
'

#Functions
function panel() {
       start=$SECONDS
       clear
#       echo "$header"
       echo ""
       echo ' 
              ___        ______
             /__/\   ___/_____/\        '${purple}Home:${reset}'
             \  \ \ /         /\\        '$home1'
              \  \ \____     /  \         '$home2'
            ___\  \ \  /\___/___ \         '$home3'
           /  / \__\/ /  \     /\ \         '$home4'
      ____/  /_______/    \   / _\/_____     '$home5' 
     /   /   \       \    /  / /       /\     '$home6'
  __/   /     \       \  /  / /       / _\__   '$home7'
 / /   /       \_______\/  / /       / /   /\   
/_/___/___________________/ /_______/ /___/  \   '${purple}Loans:${reset}'
\ \   \    ___________    \ \       \ \   \  /    '$home8'
 \_\   \  /          /\    \ \       \ \___\/    '$home9'
    \   \/          /  \    \ \       \  /      
     \__/          /    \    \ \_______\/      '${purple}Credit:${reset}'
       /__________/      \    \  /            '$home10'
       \   _____  \      /_____\/            '$home11'
        \ /    /\  \    /   \  \ \          '$home12'
         /____/  \  \  /     \  \ \
         \    \  /___\/       \  \ \
          \____\/              \__\/
        '
       echo ""

#Sleep sequence
       completed
       secs=$((minutes * 60))
       while [ $secs -gt 0 ]; do
          echo -ne "${blue}╰────╼${reset}${green} Re-launch in:${reset} ${cyan}$secs\\033[0Ks    \\r${reset}"
          sleep 1
          : $((secs--))
       done
}

function completed(){
      duration=$(( SECONDS - start ))
      echo "${blue}╭────╼${reset}${purple} Completed in: ${reset}${cyan}$duration${reset}${cyan}s${reset}"
}

#Arguments
for ((arg=0;arg<"${#args[@]}";arg++)); do
        [ "${args[$arg]}" == "--version" ] && echo "${version}" && exit
        [ "${args[$arg]}" == "--help" ] && echo "${help}" && exit
        [ "${args[$arg]}" == "--license" ] && echo "${license}" && exit
        [ "${args[$arg]}" == "--about" ] && echo "${about}" && exit
        #[ "${args[$arg]}" == "--" ] && echo ${args[$arg]}
done

#Activate panel
while [ $endscript = "false" ]
do
        panel
done
