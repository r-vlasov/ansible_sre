server {

     listen 80;
     server_name sth13.srequest.ru;

    # if ($remote_addr = 10.115.13.101) {
#            return 404;
    # }
     
     location / {
             proxy_set_header X-Real-IP  $remote_addr;
             proxy_set_header X-Forwarded-For $remote_addr;
             proxy_set_header Host $host;
             proxy_pass http://{{ inventory_hostname }}:8080;
             proxy_redirect off;
     }
}

