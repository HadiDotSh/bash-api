#!/bin/bash
# By @HadiDotSh

printf "\e[0;92m- \e[0m\e[1;77mBash API\e[0;96m [By @HadiDotSh]\n\e[0m"
mkdir "${HOME}/.bash-api"
touch "${HOME}/.bash-api/log.txt"
mv bash-api.sh "${HOME}/.bash-api/bash-api.sh"
mv hook.sh "${HOME}/.bash-api/hook.sh"

printf "\n\e[0;92m? \e[0m\e[1;77mInstallation Done. \e[0;92m You can edit those file at ${HOME}/.bash-api/\n\n\e[0m"
