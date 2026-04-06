# Entelaka Docker Stack

Dockerized setup for Entelaka project (Spring Boot + Node.js chat server + MySQL) on a Hostinger server with existing Nginx reverse proxy.

## Quick Start

```bash
git clone https://github.com/alialsuleman/entelaka-stack.git
cd entelaka-docker

# Place required config files:
- config/spring/application.properties
- config/spring/firebase-service-account-dev.json
- config/spring/firebase-service-account.json
- config/node/.env

and edit database credentials in docker-compose.yml

# Build and run
docker-compose up -d --build
