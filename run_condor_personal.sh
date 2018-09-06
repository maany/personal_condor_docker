#!/bin/bash
docker build -t personal_condor01 .
docker run -itd --name personal_condor01 -v /sys/fs/cgroup:/sys/fs/cgroup --privileged personal_condor01
docker exec -it personal_condor01 systemctl start condor
docker exec -it personal_condor01 bash
