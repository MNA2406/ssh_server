#!/bin/bash -e

: "
Murali
This is the script used to run docker image 5 times, start ssh service and get ip address
"

for ab in {1..1000}
do
docker run --name ansible_container$ab -itd ansible
docker exec -it ansible_container$ab ifconfig|grep 172.17|cut -d ' ' -f10>>ansibleip800.txt
echo "Container - " $ab " Created.."
docker exec -it ansible_container$ab service ssh start

done
