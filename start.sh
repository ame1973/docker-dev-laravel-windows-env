#!/bin/bash

echo "Stop docker stacks..."
docker compose down

echo "Create network..."
docker network create --driver=bridge --subnet=172.16.1.0/24 --gateway=172.16.1.1 service_network || true

echo "Start docker stacks..."
docker compose up -d

echo "Done"