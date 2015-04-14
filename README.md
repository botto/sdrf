#Simple Docker Registry Frontend(sdrf)

Simple frontend with auth and ssl to allow you to host your own docker reg

You will need two directories, one for the ssl key+crt and one for the .htpasswd

The nginx conf will look for `ssl.key` and `ssl.crt` under `/etc/nginx/ssl_cert` and look for `.htpasswd` under `/etc/nginx/htpasswd`

This is not friendly at the moment, it will crash hard if you don't run it correctly

First run a docker registry

`docker run -d --name docker-registry registry`

This will spool up a registry container for you

Next start the sdrf container

`docker run -d -e FRONTEND_HOSTNAME=*hostname* \`  
  `-p 443:443 \`  
  `-v (pwd)/htpasswd/:/etc/nginx/htpasswd \`  
  `-v (pwd)/ssl_cert/:/etc/nginx/ssl_cert:ro \`  
  `--link docker-registry:docker-registry-host \`  
  `botto/sdrf`
