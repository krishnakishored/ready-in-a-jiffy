#!/bin/bash



echo -n "Do you wish to build the image? (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    docker-compose build
else
    echo "using the exisiting image"
fi


echo -n "Do you wish create network? (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    docker network create backend
    # docker network create --driver overlay --attachable backend
else
    echo "using the exisiting network"
fi


sleep 2s

echo "starting the container"

docker-compose up -d


# TODO : flag to start swarm mode
# docker swarm init

# echo "Do you wish to build the image?"
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) docker-compose build; break;;
#         No ) echo "starting the container";break;;
#     esac
# done


