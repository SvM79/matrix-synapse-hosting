#!/bin/bash
# Simple health check for Synapse federation endpoint

SERVER="your.domain.tld"
PORT="8448"

curl -s "https://${SERVER}:${PORT}/_matrix/federation/v1/version" \
  | jq . || echo "Federation endpoint not responding"
