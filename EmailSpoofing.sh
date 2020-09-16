#!/bin/bash
#
# created by: Termux Hacking
#
# EmailSpoofing
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# FUNCIONES
#
function EmailSpoofing {
	sleep 0.5
	clear
echo -e "${verde}
▗▄▄▄▖            █  ▗▄▖   ▗▄▖                  ▄▄   █
▐▛▀▀▘            ▀  ▝▜▌  ▗▛▀▜                 ▐▛▀   ▀
▐▌   ▐█▙█▖ ▟██▖ ██   ▐▌  ▐▙   ▐▙█▙  ▟█▙  ▟█▙ ▐███  ██  ▐▙██▖ ▟█▟▌
▐███ ▐▌█▐▌ ▘▄▟▌  █   ▐▌   ▜█▙ ▐▛ ▜▌▐▛ ▜▌▐▛ ▜▌ ▐▌    █  ▐▛ ▐▌▐▛ ▜▌
▐▌   ▐▌█▐▌▗█▀▜▌  █   ▐▌     ▜▌▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌ ▐▌    █  ▐▌ ▐▌▐▌ ▐▌
▐▙▄▄▖▐▌█▐▌▐▙▄█▌▗▄█▄▖ ▐▙▄ ▐▄▄▟▘▐█▄█▘▝█▄█▘▝█▄█▘ ▐▌  ▗▄█▄▖▐▌ ▐▌▝█▄█▌
▝▀▀▀▘▝▘▀▝▘ ▀▀▝▘▝▀▀▀▘  ▀▀  ▀▀▘ ▐▌▀▘  ▝▀▘  ▝▀▘  ▝▘  ▝▀▀▀▘▝▘ ▝▘ ▞▀▐▌
                              ▐▌                             ▜█▛▘"${blanco}
}
function Menu_ES {
echo -e -n "${verde}
┌═══════════════════════┐
█ ${blanco}SELECCIONE UNA OPCIÓN ${verde}█
└═══════════════════════┘

┌═════════════════════════════════┐
█ [${blanco}01${verde}] ┃ ${blanco}MyCyberTools ${verde}┃ ${blanco}Microsoft ${verde}█
█═════════════════════════════════█
█ [${blanco}02${verde}] ┃ ${blanco}DeepSociety  ${verde}┃ ${blanco}Google    ${verde}█
█═════════════════════════════════█
█ [${blanco}03${verde}] ┃ ${blanco}Error404     ${verde}┃ ${blanco}Google    ${verde}█
█═════════════════════════════════█
█ [${blanco}04${verde}] ┃ ${blanco}EmailSpoof   ${verde}┃ ${blanco}Google    ${verde}█
█═════════════════════════════════█
█ [${blanco}05${verde}] ┃ ${blanco}Falsify      ${verde}┃ ${blanco}Phishing  ${verde}█
└═════════════════════════════════┘
┃
└═>>> "${blanco}
read -r webpage

if [[ $webpage == 1 || $webpage == 01 ]]; then
termux-open-url 'https://www.mycyber.tools/register.php'
elif [[ $webpage == 2 || $webpage == 02 ]]; then
termux-open-url 'https://emailspoofbyharris.000webhostapp.com'
elif [[ $webpage == 3 || $webpage == 03 ]]; then
termux-open-url 'https://error404emailprueba.000webhostapp.com/'
elif [[ $webpage == 4 || $webpage == 04 ]]; then
termux-open-url 'https://pruebaemailspoof.000webhostapp.com/'
elif [[ $webpage == 5 || $webpage == 05 ]]; then
termux-open-url 'https://github.com/TermuxHacking000/Falsify'
else
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"
sleep 1.5
EmailSpoofing
Menu_ES
fi
}
function Reiniciar {
echo -e -n "${verde}
┌══════════════════════════════════┐
█ ${blanco}¿DESEA USAR NUEVAMETE EL SCRIPT? ${verde}█
└══════════════════════════════════┘

┌═════════════┐
█ [${blanco}01${verde}] ┃  ${blanco}SI  ${verde}█
█═════════════█
█ [${blanco}02${verde}] ┃  ${blanco}NO  ${verde}█
└═════════════┘
┃
└═>>> "${blanco}
read -r reiniciar

if [[ $reiniciar == 1 || $reiniciar == 01 ]]; then
source ${PWD}/EmailSpoofing.sh
elif [[ $reiniciar == 2 || $reiniciar == 02 ]]; then
echo -e ""${blanco}
exit
else
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"
sleep 1.5
clear
Reiniciar
fi
}
EmailSpoofing
Menu_ES
Reiniciar
