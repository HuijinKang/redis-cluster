#!/bin/bash

echo "Redis Cluster"

docker exec -it redis-node-1 redis-cli --cluster create \
  172.30.0.2:7000 \
  172.30.0.3:7000 \
  172.30.0.4:7000 \
  172.30.0.5:7000 \
  172.30.0.6:7000 \
  172.30.0.7:7000 \
  --cluster-replicas 1 --cluster-yes
