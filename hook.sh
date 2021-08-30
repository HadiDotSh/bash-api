# Bash-API
# By @HadiDotSh
#   continue          ->     Used to remove the first argument
#   reply             ->     Send back a response trought netcat

if [[ "${REQUEST}" == /ping* ]];then
    reply "🏓 Pong"

elif [[ "${REQUEST}" == /echo* ]];then
    continue
    reply "${REQUEST}"
    
else
    error
fi