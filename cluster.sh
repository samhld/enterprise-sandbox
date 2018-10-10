#!/bin/bash

echo "Joining meta nodes to cluster..."
# Join meta nodes to cluster
docker exec meta1 influxd-ctl add-meta meta1:8091
docker exec meta1 influxd-ctl add-meta meta2:8091
docker exec meta1 influxd-ctl add-meta meta3:8091

docker exec meta1 bash -c influxd-ctl show

echo "Joining data nodes to cluster..."
# Join data nodes to cluster
docker exec meta1 influxd-ctl add-data data1:8088
docker exec meta1 influxd-ctl add-data data2:8088

echo "Cluster successfully created"

if [ $(uname) == "Darwin" ]; then
  open http://localhost:3010
  open http://localhost:8888
elif [ $(uname) == "Linux" ]; then
  sensible-browser http://localhost:8888
  sensible-browser http://localhost:3010
else
  echo "no browser detected..."
fi

docker exec meta1 bash -c "influxd-ctl show"
