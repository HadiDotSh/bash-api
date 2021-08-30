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