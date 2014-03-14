#!/bin/bash
green='\e[0;34m'
NC='\e[0m'
echo -e "${green}Updating Forthlight Development enviroment${NC}"
git pull origin master
echo -e "${green}Updating a Forthlight submodules and core${NC}"
git submodule foreach git pull origin dev
