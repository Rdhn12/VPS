#!/bin/sh

PURPLE='\033[0;35m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

printf "\033c"
printf "${GREEN}Starting..${NC}\n"
sleep 1
printf "\033c"

DIR=$PWD # get current dir
# if current dir is /root print ~
if [ "$PWD" = "/root"* ]; then
    DIR="~${PWD#/root}"
fi

printf "\033c"
printf "${GREEN}╭────────────────────────────────────────────────────────────────────────────────╮${NC}\n"
printf "${GREEN}│                                                                                │${NC}\n"
printf "${GREEN}│                              Ekuzikaa VPS EGG                                │${NC}\n"
printf "${GREEN}│                                                                                │${NC}\n"
printf "${GREEN}│                        ${RED}© 2021 - 2024 ${PURPLE}ysdragon${GREEN}                               │${NC}\n"
printf "${GREEN}│                                                                                │${NC}\n"
printf "${GREEN}╰────────────────────────────────────────────────────────────────────────────────╯${NC}\n"
printf "                                                                                               \n"
printf "root@Ekuzikaa:${DIR}#                                                                             \n"

run_cmd() {
    read -p "root@Ekuzikaa:$DIR# " CMD
    eval "$CMD"
    
    # Update DIR after executing command
    DIR=$PWD
    if [ "$PWD" = "/root"* ]; then
        DIR="~${PWD#/root}"
    fi
    
    printf "root@Ekuzikaa:$DIR# \n"
    run_user_cmd
}

run_cmd
