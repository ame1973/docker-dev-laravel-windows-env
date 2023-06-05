#!/bin/bash

echo "----------------------------------------"

echo "[INFO] START Laravel base env"

echo "Stop docker stacks..."
docker stack rm base

echo "Create network..."
docker network create --driver overlay --attachable --scope swarm share_network || true

echo "Start docker stacks..."
docker stack deploy -c ./docker-compose_swarm_share.yml base

echo "Done"