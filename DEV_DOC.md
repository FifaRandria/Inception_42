# Developer Documentation

## Environment Setup

### Prerequisites
Ensure the following tools are installed:
- Docker
- Docker Compose
- Make

### Configuration Files
The project uses configuration files such as:
- `.env` files for environment variables
- `docker-compose.yml` for service definitions

## Build and Launch

### Using the Makefile
The Makefile simplifies common Docker commands.

Common targets:

make build
make up
make down


### Container and Volume Management

List Running Containers
    docker compose ps
Execute a Command in a Container
    docker compose exec <service_name> <command>
Manage Volumes
    docker volume ls

#### Data Persistence

Project data is stored in Docker volumes to ensure persistence across container restarts.

Volumes are defined in docker-compose.yml

Data remains available even after containers are stopped

Volumes can be removed manually if a full reset is required