#Simple Docker Registry Frontend(sdrf)

Simple frontend with auth and ssl to allow you to host your own docker reg


This is not friendly at the moment, it will crash hard if you don't run it correctly


`docker run -d -e FRONTEND_HOSTNAME=*hostname* \`  
  `-p 443:443 \`  
  `-v (pwd)/htpasswd/:/etc/nginx/htpasswd \`  
  `-v (pwd)/ssl_cert/:/etc/nginx/ssl_cert:ro \`  
  `--link docker-registry:docker-registry-host \`  
  `botto/sdrf`
