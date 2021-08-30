# Bash Api
#### A fast bash script allowing you to create a simple and fast API using Netcat.
<p>For now, only GET requests can be handled</p>

### Install :
<p>Just pass this lines in your shell :</p>

```bash
git clone https://github.com/HadiDotSh/bash-api && cd bash-api && bash install.sh
```

### Start the API :

<p>Your file will be in the ~/.bash-api folder. You can modify the quick settings in the bash-api.sh file, or all the hook (commands) available in the hook.sh file</p>

<p>You can now start the api with : $ bash ~/.bash-api/bash-api.sh</p>
<p>Then, you can test your API by using cURL :</p>

```bash
curl ${IP}/ping
```

### Hook :

<p>To add new command/hook, just add an if condition in the file ~/.bash-api/hook.sh</p>

```bash
The "path" is used to pass data, and will be stored in ${REQUEST}.
For exemple, if the user type "curl ${IP}/echo/test/"
${REQUEST} == "/echo/test/"

Two commands are available to help you :

"continue":  Used to remove the first argument
             For exemple, if the user type "curl ${IP}/echo/test/"
             With continue : ${REQUEST} == "/test/"

"reply": Send back a response trought netcat
         For exemple: reply "Pong"
         Will send "Pong" to the person who made the request
```

### Care :

<p> This is an home made API, this is not secure and perfect.
I recommend you to put a basic auth if you open it outside.</p>