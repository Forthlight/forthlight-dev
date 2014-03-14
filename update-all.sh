#!/bin/bash
green='\e[0;32m'
cyan='\e[0;36m'
NC='\e[0m' #NoColor
echo -e "${green}ReInit submodule index${cyan}"
git submodule update --init
echo -e "${green}Updating Forthlight Development enviroment${cyan}"
git pull origin master
echo -e "${green}Updating a Forthlight submodules and core${cyan}"
git submodule foreach git pull origin dev
echo -e "${green}Update Complete${NC}"
