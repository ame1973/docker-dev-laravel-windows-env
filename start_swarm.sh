#!/bin/bash

echo "----------------------------------------"

echo "[INFO] START Laravel base env"

echo "Stop docker stacks..."
docker stack rm base

echo "Create network..."
docker network create --driver overlay --attachable --scope swarm service_network || true

echo "Start docker stacks..."
docker stack deploy -c ./docker-compose.yml base

echo "Done"