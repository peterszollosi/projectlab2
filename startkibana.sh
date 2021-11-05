#!/bin/bash
CURRENT_DIR=$(pwd)
docker run \
  --name export_kibana --link export_es:elasticsearch \
  -p 5601:5601 \
  -e "OPENSEARCH_HOSTS=https://elasticsearch:9200" \
  --rm opensearchproject/opensearch-dashboards:1.0.0