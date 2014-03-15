#!/bin/bash
g='\e[0;32m'
c='\e[0;36m'
NC='\e[0m' #NoColor
echo -e "${g}choose an option${NC}";
    select option in Re-init-submodules DevEnv-Update SubModule-Update Update-Everything Exit
do
    case $option in
        Re-init-submodules ) echo -e "${g}ReInit submodule index${c}"; git submodule update --init; echo -e "${g}Complete${NC}"; break;;
        DevEnv-Update ) echo -e "${g}Updating Forthlight Development enviroment${c}"; git pull origin master; echo -e "${g}Complete${NC}"; break;;
	SubModule-Update ) echo -e "${g}Updating all Forthlight submodules and core${c}"; git submodule foreach git pull origin dev; echo -e "${g}Complete${NC}"; break;;
	Update-Everything ) echo -e "${g}Doing all the things!";echo -e "${g}ReInitilizing submodule index${c}"; git submodule update --init;echo -e "${g}Updating Forthlight Development enviroment${c}";git pull origin master;echo -e "${g}Updating a Forthlight submodules and core${c}";git submodule foreach git pull origin dev;echo -e "${g}Update Complete${NC}"; break;;
	Exit ) exit;;
    esac
done
