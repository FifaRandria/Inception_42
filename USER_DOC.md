# User Documentation

## Overview of Services

This project provides a containerized stack composed of several services working together.
Each service runs in its own Docker container to ensure isolation and reliability.

Main services typically include:
- A web server
- An application backend
- A database
- Optional administration or monitoring tools

## Starting and Stopping the Project

From the root of the repository, run:
bash
    make build up : install, create and run necessary directories, image and lauch containers 
    make clean : remove all containers, networks, and images
    make fclean : remove all containers, networks, and images and volumes.

## Accessing the Website and Administration Panel

Website:
Access the main website at:
https://fifrandr.42.fr

Administration Panel:
The admin interface is available at:
https://fifrandr.42.fr/wp-admin

## Credentials Management

Credentials such as usernames, passwords, and database access information are stored: 
These values can be found in:
    .env files
    secrets (directories)

Checking Service Status
bash
    docker image ls : after build to see the images 
    docker compose ps : to see the containers in progress 