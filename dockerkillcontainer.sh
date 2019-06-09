#!/bin/bash -e

: "
Murali
This is the script used to run docker image 5 times, start ssh service and get ip address
"

echo 'Remove unsused container'
docker container prune

for ab in {100..1000}
do
docker kill ansible_container$ab

docker rm ansible_container$ab

done

echo 'get all docker process container'
docker ps -a

echo 'list the docker container'
docker container ls
