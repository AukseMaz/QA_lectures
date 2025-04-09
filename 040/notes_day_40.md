## Docker

[**Docker Overview**](https://docs.docker.com/get-started/docker-overview/)

[**Mano Docker paskyra**](https://hub.docker.com/repositories/mazaukse)

-   Virtual container is a simple way to setup.  
-   Image is a template of some programming tool/app/server.  
-   All applications communicate though ports.  
-   Docker container has an internal and an external port.

![Docker container](/040/images/writeableContainers.png)

### **Docker Commands**

*DOWNLOAD* image and list all local images:
```
    docker pull nginx
    docker images
```

*CREATE* container:
```
    docker run nginx
    docker run -d nginx
    docker run -d -p 8050:80 nginx
    docker run -d -p 8051:80 -p 8052:80 nginx
    docker run --name my_cnt_nginx -d -p 8053:80 nginx
```

*STOP* and START container:
```
    ctrl + C
        <!-- or -->
    docker stop (container name, eg., determined_napier)
    docker ps
    docker start (container name, eg., determined_napier)
```

*GET* a list of active containers:
```
    docker ps 
        <!-- or --> 
    docker container ls 
```

*GET* a list of all containers both active and dormant:
```
    docker ps -a 
        <!-- or --> 
    docker container ls -a 
```

*DELETE* container:
``` 
    docker rm <container_id or container-name>
    docker rm -f <container_id or container-name>
```

Localhost ip address 127.0.0.1:
open browser 127.0.0.1:8050 or localhost:8050 

### Docker volumes

docker run --name my_web -v .:/usr/share/nginx/html:ro -d -p 8050:80 nginx
