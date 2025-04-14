
[QA road map](https://roadmap.sh/qa)

## I. Repeat

## II. Navigate inside container

```powershell
# Remove image or images
docker rmi e289a478ace0 92b11f67642b 661daf9bcac8
```

```powershell
# navigate inside container
docker exec -it my_cnt_nginx bash
ls -al
cd usr
cd ./usr
cd ./usr/share/nginx/html
cd ..
touch about.html
exit
```

## III. Dockerfile and docker compose


#### 1st step: create dockerfile
```powershell
# Create dockerfile from terminal
New-Item dockerfile # widows
touch dockerfile # linux or Mac

# Open VS Code from command line in new window
code . -n
```

#### 2nd step: Write dockerfile content:
```docker
FROM nginx:latest
ADD web ./usr/share/nginx/html
```

#### 3rd step: build your image
Build image from docker file:
```powershell
docker build -t my-demo-web:latest .
```

#### 4th step: create docker container:
```powershell
docker run --name cnt_new_web -p 8089:80 -d my-demo-web
```

### Docker compose 
https://docs.docker.com/compose/intro/compose-application-model/  

```powershell
    cd ..
    mkdir docker_compose_pg
    cd .\docker_compose_pg\
    new-item docker-compose.yml
    code . -n
```
#### Create docker-compose.yml file
```yml
version: '3.8'

services:
  postgres:
    container_name: my-postgres-db
    image: postgres:15
    ports:
      - "5435:5432"
    environment:
      POSTGRES_USER: myuser
      POSTGRES_PASSWORD: mypassword
      POSTGRES_DB: mydatabase
    volumes:
      - pgdata:/var/lib/postgresql/data

volumes:
  pgdata:
```

Run container:
```powershell
docker-compose up -d
```