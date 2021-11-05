#!/bin/bash

mkdir esdata
CURRENT_DIR=$(pwd)
# ES 7.10.0
docker run --name export_es  --rm -p 19200:9200 -p 19300:9300 -e "discovery.type=single-node" opensearchproject/opensearch:1.0.0