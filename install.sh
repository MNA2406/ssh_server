#!/bin/bash -e

: "
Murali
This is the script used to run docker image 5 times, start ssh service and get ip address
"

for ab in {1..10}
do

docker exec -it ansible_container$ab chown -R shmurali: /home/shmurali
docker exec -it ansible_container$ab update-alternatives --install /usr/bin/python python /usr/bin/python3 1

done
