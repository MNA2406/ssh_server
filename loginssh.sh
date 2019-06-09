#!/bin/bash -e

for ab in `cat ip.txt`;do echo $ab;ssh shmurali@$ab 'ifconfig|grep inet';done
