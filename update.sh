#!/bin/bash
#colours! yay!
g='\e[0;32m' #green
c='\e[0;36m' #cyan
NC='\e[0m' #NoColor :C
echo -e "${g}choose an option${NC}";
    select option in Re-init-submodules DevEnv-Update SubModule-Hard-Update Update-Everything Exit
do
    case $option in
        DevEnv-Update ) echo -e "${g}Updating Forthlight Development enviroment and updating submodules${c}"; git pull; git submodule update; echo -e "${g}Complete${NC}"; break;;
	Re-init-submodules ) echo -e "${g}ReInit submodule index${c}"; git submodule update --init; echo -e "${g}Complete${NC}"; break;;
	SubModule-Hard-Update ) echo -e "${g}Updating all Forthlight submodules and core${c}"; git submodule foreach git pull origin dev; echo -e "${g}Complete${NC}"; break;;
	Update-Everything ) echo -e "${g}Doing all the things!";echo -e "${g}Updating Forthlight Development enviroment${c}";git pull;echo -e "${g}Updating a Forthlight submodules and core${c}";git submodule update;echo -e "${g}Update Complete${NC}"; break;;
	Exit ) exit;;
    esac
done
