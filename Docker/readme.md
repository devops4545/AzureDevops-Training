# Docker - Essential Commands
- The below are the list of essential commands we are in need 

|     Commands                 |    Description                                  |
| ------------------------------- | --------------------------------------------- |
| docker ps | List all running containers |
| docker ps -a | List all containers stopped, running |
| docker stop container-id | Stop the container which is running |
| docker start container-id | Start the container which is stopped |
| docker restart container-id | Restart the container which is running |
| docker port container-id | List port mappings of a specific container |
| docker rm container-id or name | Remove the stopped container |
| docker rm -f container-id or name| Remove the running container forcefully |
| docker pull image-info | Pull the image from docker hub repository |
| docker pull nginx:latest | Pull the image from docker hub repository |
| docker exec -it container-name /bin/sh | Connect to linux container and execute commands in container |
| docker rmi image-id | Remove the docker image |
| docker logout | Logout from docker hub |
| docker login -u username -p password | Login to docker hub |
| docker stats | Display a live stream of container(s) resource usage statistics |
| docker top container-id or name | Display the running processes of a container |
| docker version | Show the Docker version information |


docker version

Docker pull nginx 

docker run --name mynginxdefault -p 80:80 -d nginx

Docker ps 

Docker ps -a 

Docker ps -a -q 

Docker exec -it 

Docker stop 

Docker start 

Docker rm 

Docker rmi 


docker run -ti  ubuntu /bin/bash 


FROM nginx
COPY index.html /usr/share/nginx/html



docker run --name mynginxdefault -p 80:80 -d nginx
Docker ps 


docker build -t stacksimplify/mynginx_image1:v1 .

docker build -t <your-docker-hub-id>/mynginx_image1:v1 .
docker run --name mynginx1 -p 80:80 -d <your-docker-hub-id>/mynginx_image1:v1


docker tag <your-docker-hub-id>/mynginx_image1:v1 <your-docker-hub-id>/mynginx_image1:v1-release
docker push <your-docker-hub-id>/mynginx_image1:v1-release
  docker run -d \
  --name devtest \
  -v myvol2:/app \
  nginx:latest   docker run -it -v demo_volume:/data ubuntu:22.04


FROM ubuntu
CMD ["echo", "Hello World"]

docker build -t cmd-instructions .

docker run cmd-instructions
  docker run cmd-instructions echo "message changed"


docker run cmd-instructions printenv


FROM ubuntu
ENTRYPOINT ["echo", "Hello World"]


docker build -t entrypoint-instructions 
docker run entrypoint-instructions

Docker run entrypoint-instructions  printing   FROM ubuntu
ENTRYPOINT ["echo", "Hello"]
CMD ["Abhinav"]

docker build -t entrypoint-cmd .
docker run entrypoint-cmd


docker run entrypoint-cmd @abhinavd26

# Docker - Essential Commands
- The below are the list of essential commands we are in need 

|     Commands                 |    Description                                  |
| ------------------------------- | --------------------------------------------- |
| docker ps | List all running containers |
| docker ps -a | List all containers stopped, running |
| docker stop container-id | Stop the container which is running |
| docker start container-id | Start the container which is stopped |
| docker restart container-id | Restart the container which is running |
| docker port container-id | List port mappings of a specific container |
| docker rm container-id or name | Remove the stopped container |
| docker rm -f container-id or name| Remove the running container forcefully |
| docker pull image-info | Pull the image from docker hub repository |
| docker pull nginx:latest | Pull the image from docker hub repository |
| docker exec -it container-name /bin/sh | Connect to linux container and execute commands in container |
| docker rmi image-id | Remove the docker image |
| docker logout | Logout from docker hub |
| docker login -u username -p password | Login to docker hub |
| docker stats | Display a live stream of container(s) resource usage statistics |
| docker top container-id or name | Display the running processes of a container |
| docker version | Show the Docker version information |

