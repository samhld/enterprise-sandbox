#!/bin/bash

echo "Joining meta nodes to cluster..."
# Join meta nodes to cluster
docker exec enterprise-sandbox_meta-node1_1 influxd-ctl add-meta e556a5b56d8e:8091
docker exec enterprise-sandbox_meta-node1_1 influxd-ctl add-meta 126e19a573d3:8091
docker exec enterprise-sandbox_meta-node1_1 influxd-ctl add-meta 6acea5d97b14:8091

docker exec enterprise-sandbox_meta-node1_1 bash -c influxd-ctl show

echo "Joining data nodes to cluster..."
# Join data nodes to cluster
docker exec enterprise-sandbox_meta-node1_1 influxd-ctl add-data 32c39364898b:8088
docker exec enterprise-sandbox_meta-node1_1 influxd-ctl add-data cc4703bf6225:8088

echo "Cluster successfully created"
