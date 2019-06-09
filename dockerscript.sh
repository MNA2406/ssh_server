#!/bin/bash -e

: "
Murali
This is the script used to run docker image 5 times, start ssh service and get ip address
"

for ab in {1..10}
do
docker run --name ansible_container$ab -itd ansible

docker exec -it ansible_container$ab service ssh start
docker exec -it ansible_container$ab ifconfig|grep 172.17|cut -d ' ' -f10>>ip.txt

done
