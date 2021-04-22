#!/bin/bash

docker-compose kill 
sleep 2s 
docker-compose rm -f
# echo "Remove the network: backend"


echo -n "Do you wish remove the network? (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    docker network rm  backend
else
    echo "'backend' network is not removed"
fi

