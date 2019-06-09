#!/bin/bash -e

for ab in `cat ansibleip800.txt`;do ssh -o "StrictHostKeyChecking no" shmurali@$ab "hostname";done
