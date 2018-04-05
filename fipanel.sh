#!/usr/bin/env bash

#Colors
reset="$(tput sgr0)"
#black="$(tput bold; tput setaf 0)"
blue="$(tput bold; tput setaf 4)"
cyan="$(tput bold; tput setaf 6)"
green="$(tput bold; tput setaf 71)"
purple="$(tput bold; tput setaf 5)"
red="$(tput bold; tput setaf 1)"
#white="$(tput bold; tput setaf 7)"
yellow="$(tput bold; tput setaf 3)"
orange="$(tput bold; tput setaf 166)"
#violet="$(tput bold; tput setaf 61)"
host="${blue}$HOSTNAME${reset}"

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
dot="${purple}•${reset}"

#Expenses 
mortgage='1370'
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
khols='50'
internet='55'
phone='70'
food='470'
hule='66'
berg='45'
health='99'
cleaning='27'
juice='30'
coop='20'
subway='20'
chip='20'
items='30'
med='650'
gym='25'
unexpected='100'

#Totals
total=$(($mortgage+$hoa+$elec+$water+$gas+$sewer+$trash+$signature+$title+$citi+$barclay+$chase+$khols+$internet+$phone+$food+$hule+$berg+$health+$cleaning+$juice+$coop+$subway+$chip+$items+$med+$gym+$unexpected ))
total=$(printf "%4.f\n" $total)
paid='0'

#Dates
mortdate="2 "
hoadate="2 "
elecdate="15"
waterdate="12"
gasdate="28"
sewerdate="1 "
trashdate="9 "
sigdate="18"
titledate="18"
citidate="15"
barcdate="28"
chasedate="10"
kholsdate="11"
interdate="1 "
phonedate="25"
fooddate="30"
huledate="2 "
bergdate="26"
healthdate="26"
cleaningdate="26"
juicedate="18"
coopdate="18"
subwaydate="18"
chipdate="18"
itemsdate="18"
meddate="18"
gymdate="5 "
unexpecteddate="30"

# [Green] make sure you've paid it [Orange] prepare to pay it
if [[ "$mortdate" -gt "$today" ]]
   then
   mortdate1="${red}✗ $month $mortdate${reset}"
   mortprice="${red}$mortgage$(reset)"
   else
   mortdate1="${green}✔ $month $mortdate${reset}"
   mortprice="${green}$mortgage${reset}"
   paid=$(($paid+$mortgage))
fi

if [[ "$hoadate" -gt "$today" ]]
   then
   hoadate1="${red}✗ $month $hoadate${reset}"
   hoaprice="${red}$hoa${reset}"
   else
   hoadate1="${green}✔ $month $hoadate${reset}"
   hoaprice="${green}$hoa${reset}"
   paid=$(($paid+$hoa))
fi

if [[ "$elecdate" -gt "$today" ]]
   then
   elecdate1="${red}✗ $month $elecdate${reset}"
   elecprice="${red}$elec${reset}"
   else
   elecdate1="${green}✔ $month $elecdate${reset}"
   elecprice="${green}$elec${reset}"
   paid=$(($paid+$elec))
fi

if [[ "$waterdate" -gt "$today" ]]
   then
   waterdate1="${red}✗ $month $waterdate${reset}"
   waterprice="${red}$water${reset}"
   else
   waterdate1="${green}✔ $month $waterdate${reset}"
   waterprice="${green}$water${reset}"
   paid=$(($paid+$water))
fi

if [[ "$gasdate" -gt "$today" ]]
   then
   gasdate1="${red}✗ $month $gasdate${reset}"
   gasprice="${red}$gas${reset}"
   else
   gasdate1="${green}✔ $month $gasdate${reset}"
   gasprice="${green}$gas${reset}"
   paid=$(($paid+$gas))
fi

if [[ "$sewerdate" -gt "$today" ]]
   then
   sewerdate1="${red}✗ $month $sewerdate${reset}"
   sewerprice="${red}$sewer${reset}"
   else
   sewerdate1="${green}✔ $month $sewerdate${reset}"
   sewerprice="${green}$sewer${reset}"
   paid=$(($paid+$sewer))
fi

if [[ "$trashdate" -gt "$today" ]]
   then
   trashdate1="${red}✗ $month $trashdate${reset}"
   trashprice="${red}$trash${reset}"
   else
   trashdate1="${green}✔ $month $trashdate${reset}"
   trashprice="${green}$trash${reset}"
   paid=$(($paid+$trash))
fi

if [[ "$sigdate" -gt "$today" ]]
   then
   sigdate1="${red}✗ $month $sigdate${reset}"
   sigprice="${red}$signature${reset}"
   else
   sigdate1="${green}✔ $month $sigdate${reset}"
   sigprice="${green}$signature${reset}"
   paid=$(($paid+$signature))
fi

if [[ "$titledate" -gt "$today" ]]
   then
   titledate1="${red}✗ $month $titledate${reset}"
   titleprice="${red}$title${reset}"
   else
   titledate1="${green}✔ $month $titledate${reset}"
   titleprice="${green}$title${reset}"
   paid=$(($paid+$title))
fi

if [[ "$citidate" -gt "$today" ]]
   then
   citidate1="${red}✗ $month $citidate${reset}"
   citiprice="${red}$citi${reset}"
   else
   citidate1="${green}✔ $month $citidate${reset}"
   citiprice="${green}$citi${reset}"
   paid=$(($paid+$citi))
fi

if [[ "$barcdate" -gt "$today" ]]
   then
   barcdate1="${red}✗ $month $barcdate${reset}"
   barcprice="${red}$barclay${reset}"
   else
   barcdate1="${green}✔ $month $barcdate${reset}"
   barcprice="${green}$barclay${reset}"
   paid=$(($paid+$barclay))
fi

if [[ "$chasedate" -gt "$today" ]]
   then
   chasedate1="${red}✗ $month $chasedate${reset}"
   chaseprice="${red}$chase${reset}"
   else
   chasedate1="${green}✔ $month $chasedate${reset}"
   chaseprice="${green}$chase${reset}"
   paid=$(($paid+$chase))
fi

if [[ "$kholsdate" -gt "$today" ]]
   then
   kholsdate1="${red}✗ $month $kholsdate${reset}"
   kholsprice="${red}$khols${reset}"
   else
   kholsdate1="${green}✔ $month $kholsdate${reset}"
   kholsprice="${green}$khols${reset}"
   paid=$(($paid+$khols))
fi

if [[ "$innterdate" -gt "$today" ]]
   then
   interdate1="${red}✗ $month $interdate${reset}"
   interprice="${red}$internet${reset}"
   else
   interdate1="${green}✔ $month $interdate${reset}"
   interprice="${green}$internet${reset}"
   paid=$(($paid+$internet))
fi

if [[ "$phonedate" -gt "$today" ]]
   then
   phonedate1="${red}✗ $month $phonedate${reset}"
   phoneprice="${red}$phonenet${reset}"
   else
   phonedate1="${green}✔ $month $phonedate${reset}"
   phoneprice="${green}$phone${reset}"
   paid=$(($paid+$phone))
fi

if [[ "$fooddate" -gt "$today" ]]
   then
   fooddate1="${red}✗ $month $fooddate${reset}"
   foodprice="${red}$food${reset}"
   else
   fooddate1="${green}✔ $month $fooddate${reset}"
   foodprice="${green}$food${reset}"
   paid=$(($paid+$food))
fi

if [[ "$huledate" -gt "$today" ]]
   then
   huledate1="${red}✗ $month $huledate${reset}"
   huleprice="${red}$hule${reset}"
   else
   huledate1="${green}✔ $month $huledate${reset}"
   huleprice="${green}$hule${reset}"
   paid=$(($paid+$hule))
fi

if [[ "$bergdate" -gt "$today" ]]
   then
   bergdate1="${red}✗ $month $bergdate${reset}"
   bergprice="${red}$berg${reset}"
   else
   bergdate1="${green}✔ $month $bergdate${reset}"
   bergprice="${green}$berg${reset}"
   paid=$(($paid+$berg))
fi

if [[ "$healthdate" -gt "$today" ]]
   then
   healthdate1="${red}✗ $month $healthdate${reset}"
   healthprice="${red}$health${reset}"
   else
   healthdate1="${green}✔ $month $healthdate${reset}"
   healthprice="${green}$health${reset}"
   paid=$(($paid+$health))
fi

if [[ "$cleaningdate" -gt "$today" ]]
   then
   cleaningdate1="${red}✗ $month $cleaningdate${reset}"
   cleaningprice="${red}$cleaning${reset}"
   else
   cleaningdate1="${green}✔ $month $cleaningdate${reset}"
   cleaningprice="${green}$cleaning${reset}"
   paid=$(($paid+$cleaning))
fi

if [[ "$juicedate" -gt "$today" ]]
   then
   juicedate1="${red}✗ $month $juicedate${reset}"
   juiceprice="${red}$juice${reset}"
   else
   juicedate1="${green}✔ $month $juicedate${reset}"
   juiceprice="${green}$juice${reset}"
   paid=$(($paid+$juice))
fi

if [[ "$coopdate" -gt "$today" ]]
   then
   coopdate1="${red}✗ $month $coopdate${reset}"
   coopprice="${red}$coop${reset}"
   else
   coopdate1="${green}✔ $month $coopdate${reset}"
   coopprice="${green}$coop${reset}"
   paid=$(($paid+$coop))
fi

if [[ "$subwaydate" -gt "$today" ]]
   then
   subwaydate1="${red}✗ $month $subwaydate${reset}"
   subwayprice="${red}$subway${reset}"
   else
   subwaydate1="${green}✔ $month $subwaydate${reset}"
   subwayprice="${green}$subway${reset}"
   paid=$(($paid+$subway))
fi

if [[ "$chipdate" -gt "$today" ]]
   then
   chipdate1="${red}✗ $month $chipdate${reset}"
   chipprice="${red}$chip${reset}"
   else
   chipdate1="${green}✔ $month $chipdate${reset}"
   chipprice="${green}$chip${reset}"
   paid=$(($paid+$chip))
fi

if [[ "$itemsdate" -gt "$today" ]]
   then
   itemsdate1="${red}✗ $month $itemsdate${reset}"
   itemsprice="${red}$items${reset}"
   else
   itemsdate1="${green}✔ $month $itemsdate${reset}"
   itemsprice="${green}$items${reset}"
   paid=$(($paid+$items))
fi

if [[ "$meddate" -gt "$today" ]]
   then
   meddate1="${red}✗ $month $meddate${reset}"
   medprice="${red}$med${reset}"
   else
   meddate1="${green}✔ $month $meddate${reset}"
   medprice="${green}$med${reset}"
   paid=$(($paid+$med))
fi

if [[ "$gymdate" -gt "$today" ]]
   then
   gymdate1="${red}✗ $month $gymdate${reset}"
   gymprice="${red}$gym${reset}"
   else
   gymdate1="${green}✔ $month $gymdate${reset}"
   gymprice="${green}$gym${reset}"
   paid=$(($paid+$gym))
fi

if [[ "$unexpecteddate" -gt "$today" ]]
   then
   unexpecteddate1="${red}✗ $month $unexpecteddate${reset}"
   unexpectedprice="${red}$unexpected${reset}"
   else
   unexpecteddate1="${green}✔ $month $unexpecteddate${reset}"
   unexpectedprice="${green}$unexpected${reset}"
   paid=$(($paid+$unexpected))
fi

#Totals2
remain=$(( $total - $paid ))
remain=$(printf "%4.f\n" $remain | tail -c 5)
paid=$(printf "%4.f\n" $paid)

#Left Side
lefthome="${purple}Home:${reset}"
left1="${cyan}[ ${reset}${blue}Mortgage:${reset} $mortprice${cyan} ]──────────────────╼[ ${reset}$mortdate1${cyan} ]${reset} $dot "
left2="${cyan}[ ${reset}${blue}HOA:${reset} $hoaprice${cyan} ]───────────────────────╼[ ${reset}$hoadate1${cyan} ]${reset} $dot "
left3="${cyan}[ ${reset}${blue}Electric:${reset} $elecprice${cyan} ]─────────────────╼[ ${reset}$elecdate1${cyan} ]${reset} $dot "
left4="${cyan}[ ${reset}${blue}Water:${reset} $waterprice${cyan} ]────────────────────╼[ ${reset}$waterdate1${cyan} ]${reset} $dot "
left5="${cyan}[ ${reset}${blue}Gas:${reset} $gasprice${cyan} ]─────────────────────╼[ ${reset}$gasdate1${cyan} ]${reset} $dot "
left6="${cyan}[ ${reset}${blue}Sewer:${reset} $sewerprice${cyan} ]──────────────────╼[ ${reset}$sewerdate1${cyan} ]${reset} $dot "
left7="${cyan}[ ${reset}${blue}Trash:${reset} $trashprice${cyan} ]──────────────────╼[ ${reset}$trashdate1${cyan} ]${reset} $dot "
blank1="                                           $dot "
leftloans="${purple}Loans:${reset}                                    $dot "
left8="${cyan}[ ${reset}${blue}Signature:${reset} $sigprice${cyan} ]─────────╼[ ${reset}$sigdate1${cyan} ]${reset} $dot "
leftcredit="${purple}Credit:${reset}                               $dot "
left9="${cyan}[ ${reset}${blue}Title:${reset} $titleprice${cyan} ]────────────╼[ ${reset}$titledate1${cyan} ]${reset} $dot "
blank2="                                       $dot "
left10="${cyan}[ ${reset}${blue}Citi:${reset} $titleprice${cyan} ]──────────╼[ ${reset}$citidate1${cyan} ]${reset} $dot "
left11="${cyan}[ ${reset}${blue}Barclay:${reset} $barcprice${cyan} ]──────╼[ ${reset}$barcdate1${cyan} ]${reset} $dot "
left12="${cyan}[ ${reset}${blue}Chase:${reset} $chaseprice${cyan} ]───────╼[ ${reset}$chasedate1${cyan} ]${reset} $dot "
left13="${cyan}[ ${reset}${blue}Khols:${reset} $kholsprice${cyan} ]───────╼[ ${reset}$kholsdate1${cyan} ]${reset} $dot "
blank3="                                 $dot "
leftservices="${purple}Services:${reset}                       $dot "
left14="${cyan}[ ${reset}${blue}Internet:${reset} $interprice${cyan} ]─╼[ ${reset}$interdate1${cyan} ]${reset} $dot "
left15="${cyan}[ ${reset}${blue}Phone:${reset} $interprice${cyan} ]───╼[ ${reset}$interdate1${cyan} ]${reset} $dot "
blank4="                             $dot "
blank5="                            $dot "
#Right Side
rightgroceries="                                                                   ${purple}Groceries:${reset}"
right1="${cyan}[ ${reset}$fooddate1${cyan} ]────╼[ ${reset}${blue}Food:${reset} $foodprice${cyan} ]${reset}"
right2="${cyan}[ ${reset}$huledate1${cyan} ]──────╼[ ${reset}${blue}Hule:${reset} $huleprice${cyan} ]${reset}"
right3="${cyan}[ ${reset}$bergdate1${cyan} ]─────╼[ ${reset}${blue}DrBerg:${reset} $bergprice${cyan} ]${reset}"
right4="${cyan}[ ${reset}$healthdate1${cyan} ]──────╼[ ${reset}${blue}Health:${reset} $healthprice${cyan} ]${reset}"
right5="${cyan}[ ${reset}$cleaningdate1${cyan} ]─────╼[ ${reset}${blue}Cleaning:${reset} $cleaningprice${cyan} ]${reset}"
rightgoingout="                          ${purple}Going out:${reset}"
right6="${cyan}[ ${reset}$juicedate1${cyan} ]──────╼[ ${reset}${blue}BoiseJuice:${reset} $juiceprice${cyan} ]${reset}"
right7="${cyan}[ ${reset}$coopdate1${cyan} ]───────╼[ ${reset}${blue}Co-op_Deli:${reset} $coopprice${cyan} ]${reset}"
right8="${cyan}[ ${reset}$subwaydate1${cyan} ]────────────╼[ ${reset}${blue}Subway:${reset} $subwayprice${cyan} ]${reset}"
right9="${cyan}[ ${reset}$chipdate1${cyan} ]───────────╼[ ${reset}${blue}Chipotle:${reset} $chipprice${cyan} ]${reset}"
rightother="                                    ${purple}Other:${reset}"
right10="${cyan}[ ${reset}$itemsdate1${cyan} ]──────────────╼[ ${reset}${blue}NewItems:${reset} $itemsprice${cyan} ]${reset}"
right11="${cyan}[ ${reset}$meddate1${cyan} ]──────────────╼[ ${reset}${blue}Medicine:${reset} $medprice${cyan} ]${reset}"
right12="${cyan}[ ${reset}$gymdate1${cyan} ]─────────────────────╼[ ${reset}${blue}Gym:${reset} $gymprice${cyan} ]${reset}"
right13="${cyan}[ ${reset}$unexpecteddate1${cyan} ]──────────────╼[ ${reset}${blue}Unexpected:${reset} $unexpectedprice${cyan} ]${reset}"
box3="${cyan}$"${green}$paid${reset}"${cyan} paid ${reset}"
box4="${cyan}$"${red}$remain${reset}"${cyan} remaining ${reset}"
box5="${cyan}$"${blue}$total${reset}"${cyan} total ${reset}"
rightbox1="${purple} ______________________________________________ ${reset}"
rightbox2="${purple} /                   /                          | ${reset}"
rightbox3="${purple} /  $box3     ${purple} /                           | ${reset}"
rightbox4="${purple} /  $box4 ${purple}/                           ${purple} | ${reset}"
rightbox5="${purple} /  $box5     ${purple}/                             ${purple}| ${reset}"
#rightbox6="${purple} /_________________________________________________| ${reset}"


IFS='
'

#Functions
function panel() {
       start=$SECONDS
       clear
       echo ""
echo '
'$lefthome''$rightgroceries'
'$left1''$right1'
'$left2''$right2'
'$left3''$right3'
'$left4''$right4'
'$left5''$right5'
'$left6'
'$left7''$rightgoingout' 
'$blank1''$right6'
'$leftloans''$right7'
'$left8''$right8'
'$left9''$right9'
'$blank2' 
'$leftcredit''$rightother'
'$left10''$right10'
'$left11''$right11'
'$left12''$right12'
'$left13''$right13'
'$blank3'      
'$leftservices''$rightbox1'
'$left14''$rightbox2'
'$left15''$rightbox3'
'$blank4''$rightbox4'
'$blank5''$rightbox5''
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
      echo "${blue}╭────╼${reset}${purple} Completed in: ${reset}${cyan}$duration${reset}${cyan}s${reset}    $dot ${purple} /___________________/______________________________| ${reset}"
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
