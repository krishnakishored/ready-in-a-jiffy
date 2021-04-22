#!/bin/bash

# docker container exec -it <container-name> redis-cli 
# docker container ls - to check if the contianer is running
docker container exec -it db-redis_redis-server_1 redis-cli 

# TODO:
# handle swarm mode