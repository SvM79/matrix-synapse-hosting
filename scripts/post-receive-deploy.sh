#!/bin/bash
# Post-receive Git hook for Synapse container restart

echo "Deploy triggered via Git push..."

cd /volume1/docker/matrix-synapse || exit 1
docker restart synapse

echo "Synapse restarted."
