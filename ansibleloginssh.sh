#!/bin/bash -e

for ab in `cat ansibleip.txt`;do ssh -o "StrictHostKeyChecking no" shmurali@$ab "hostname";done
