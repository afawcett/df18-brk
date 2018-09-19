#!/bin/bash

txtred='\e[0;31m' # Red
bldgrn='\e[1;32m' # Green
txtrst='\e[0m'    # Text Reset

#trap "exit 1" TERM
#export TOP_PID=$$

prompt() {
    printf "\n$txtred%s: $bldgrn%s$txtrst" "$USER" "$PWD"
    printf "\n-> "
    printf "$@ "
}

dprintf() {
    prompt "$@"
    read cmd
    if [ "$cmd" = "q" ]; then
        kill -s TERM $TOP_PID
        return 1
    fi
    if [ "$cmd" != "s" ]; then
        eval "$@"
    fi
}

dprintfake() {
    prompt "$@"
    read cmd
}