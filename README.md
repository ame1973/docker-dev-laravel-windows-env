# Docker Laravel Development Env

## Requirements

- [Docker](https://www.docker.com/)

- [Docker Compose](https://docs.docker.com/compose/)

## Services

- [Portainer](https://www.portainer.io/) (optional)

- mysql/mysql-server:8.0.30

- redis:7.0.11-alpine3.18

- getmeili/meilisearch:v1.2

## Features

- [x] Backend Mysql database

Reference `./backup/backup_db.sh.example`

## Usage

1. Clone this repository

2. RUN `docker-compose up -d`

## Configuration

### Mysql

- port: `3306`
- username: `root`
- password: `password`

### Redis

- port: `6379`

### Meilisearch

- port: `7700`
- master key: `master_key`

### Portainer

- port: `9000`
- url: `http://localhost:9000`

