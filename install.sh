#!/data/data/com.termux/files/usr/bin/bash

#COLORS
        export black='\033[1;30m'
        export red='\033[1;31m'
        export green='\033[1;32m'
        export yellow='\033[1;33m'
        export blue='\033[1;34m'
        export magenta='\033[1;35m'
        export cyan='\033[1;36m'
        export white='\033[0m'

#INSTALANDO PAQUETES

echo ""
printf "$green[$white*$green]$yellow Instalando Paquetes...\n$white"
echo ""
sleep 3

apt install unstable-repo
apt install exiv2

echo ""
printf "			$blue>> Instalacion Completa <<$white"
echo ""
sleep 1

function inicio {
	
	clear
	printf "
            $green __  __      _       $yellow _____      _  __
            $green|  \/  | ___| |_ __ _$yellow| ____|_  _(_)/ _|
            $green| |\/| |/ _ \ __/ _' $yellow|  _| \ \/ / | |_
            $green| |  | |  __/ || (_| $yellow| |___ >  <| |  _|
            $green|_|  |_|\___|\__\__,_$yellow|_____/_/\_\_|_|  $white v1.0

              $green.:.:.$blue Script encoded by:$white @JRIC2002 $green.:.:.$white
      $green.:.:.$blue Description:$white Extract Metadata from an Image  $green.:.:.$white
        "
	sleep 1
	echo ""
	printf "$green[$white#$green]$magenta Desea iniciar MetaExif:\n$white"
        echo ""
        sleep 1
        printf "$green       [$white\e001$green]$yellow Si$white\n"
        echo ""
        printf "$green       [$white\e002$green]$yellow No$white\n"
        echo ""

        printf "$green[$white\e0*$green]$green Choose an Option$white >>"
        read -p " " opt

                if [ $opt = "1" -o $opt = "01" ]; then
                        clear
                        bash MetaExif
			sleep 1
                elif [ $opt = "2" -o $opt = "02" ]; then
                        echo ""
                        exit
                else
                        clear
                        inicio
                fi	

}

inicio
