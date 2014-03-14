#!/bin/bash
green='\e[0;32m'
cyan='\e[0;36m'
NC='\e[0m'
echo -e "${cyan}ReInit submodule index${NC}"
git submodule update --init
echo -e "${green}Updating Forthlight Development enviroment${NC}"
git pull origin master
echo -e "${green}Updating a Forthlight submodules and core${NC}"
git submodule foreach git pull origin dev
