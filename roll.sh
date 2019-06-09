for x in {1..300}
do 
docker exec -it ansible_container$x mkdir /home/shmurali/.ansible
docker exec -it ansible_container$x chown -R shmurali: /home/shmurali/.ansible
docker exec -it ansible_container$x update-alternatives --install /usr/bin/python python /usr/bin/python3 1
done


