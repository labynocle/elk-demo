#!/usr/bin/env bash

# Wait for the Elasticsearch container to be ready before starting Kibana.
echo "Stalling for Elasticsearch"
while true; do
    # CentOS uses ncat (from the nmap package)
    nc -z elasticsearch 9200 2>/dev/null && break
done

echo "Starting Kibana"
exec kibana
