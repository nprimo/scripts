#/usr/bin/env bash 

# Remove containers
# - Stop all containers
docker stop $(docker ps -aq)
# - Remove all containers
docker rm $(docker ps -aq)

# Remove all images with tag "<none>"
docker rmi $(docker images | grep \<none\> | awk '{print $3}')
