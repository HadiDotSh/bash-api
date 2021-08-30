#!/bin/bash
# Bash Api
# By @HadiDotSh

##### SETTINGS
PORT=2220
API_FOLDER="${HOME}/.bash-api"
HOOK_FILE="${API_FOLDER}/hook.sh"
LOG_FILE="${API_FOLDER}/log.txt"
#####

commands(){
    echo "$(date)  |  Request : ${REQUEST}" >> "${LOG_FILE}"
    source "${HOOK_FILE}"
}

# Send back a response trought netcat
reply(){
    echo "${1}" > "${API_FOLDER}/temp"
}

# Used to remove the first argument
continue(){
    REQUEST=$(echo ${REQUEST} | sed 's/^\///;   s/[^/]*\(\/.*\)/\1/')
}

error(){
    reply "⚠️  Error | 404 Not Found"
}

listening(){
    printf "Listening on port ${PORT}"
    while true;do
        cat "${API_FOLDER}/temp" | nc -ln ${PORT} -q 1 > >(
       	while read line;do
            line=$(echo "${line}" | tr -d '[\r\n]')
            if echo "${line}" | grep -qE '^GET /' ;then
                REQUEST=$(echo "${line}" | cut -d ' ' -f2)
            elif [ "x${line}" = x ];then
                commands
            fi
            done
        )
    done
    rm -f "${API_FOLDER}/temp"
}

mkfifo "${API_FOLDER}/temp"
listening