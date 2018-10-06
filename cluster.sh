#!/bin/bash

echo "Joining meta nodes to cluster..."
# Join meta nodes to cluster
docker exec enterprise-sandbox_meta-node1_1 'influxd-ctl enterprise-sandbox_meta-node1_1:8091'
docker exec enterprise-sandbox_meta-node1_1 'influxd-ctl enterprise-sandbox_meta-node2_1:8091'
docker exec enterprise-sandbox_meta-node1_1 'influxd-ctl enterprise-sandbox_meta-node3_1:8091'

docker exec enterprise-sandbox_meta-node1_1 influxd-ctl show

echo "Joining data nodes to cluster..."
# Join data nodes to cluster
docker exec enterprise-sandbox_meta-node1_1 'influxd-ctl add-data enterprise-sandbox_data-node1_1:8088'
docker exec enterprise-sandbox_meta-node1_1 'influxd-ctl add-data enterprise-sandbox_data-node2_1:8088'

echo "Cluster successfully created"
