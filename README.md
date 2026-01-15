This project has been created as part of the 42 curriculum by fifrandr.

## Description
	This project aims to introduce and demonstrate the use of Docker for building isolated,
reproducible, and portable development environments. The goal is to design a containerized application using Docker and Docker Compose,following best practices in terms of security, networking, and data persistence.

## Instructions
	### Requirements
		- Docker
		- Docker Compose

## Build and Run
bash
	make build up : install, create and run necessary directories, image and lauch containers 
	make clean : remove all containers, networks, and images
	make fclean : remove all containers, networks, and images and volumes.

## Project Description – Docker Usage
	This project relies on Docker to isolate services and ensure consistent behavior across
	different systems. Each service runs in its own container and communicates through a
	dedicated Docker network.
      
## Virtual Machines vs Docker
      Virtual Machines virtualize an entire operating system, making them heavier and slower.
      Docker containers share the host OS kernel, making them lightweight, faster to start,
and more resource-efficient.

## Secrets vs Environment Variables
      Environment variables are suitable for non-sensitive configuration values.
      Docker Secrets are designed to securely store sensitive data such as passwords or API keys,
reducing the risk of exposure.

## Docker Network vs Host Network
      Docker networks provide isolation and controlled communication between containers.
      Host networking removes isolation and can expose services directly, which is less secure
and harder to manage.

## Docker Volumes vs Bind Mounts
      Docker volumes are managed by Docker and are safer and more portable.
      Bind mounts depend on the host filesystem and are mainly useful for development purposes.

## Resources
### Technical References
      Docker Documentation: https://docs.docker.com/
      Docker Compose Documentation: https://docs.docker.com/compose/
      OWASP Docker Security Guidelines
Use of AI
AI tools were used to:
      Help understand Docker concepts and best practices
      Assist with debugging configuration issues
      Improve documentation clarity and structure

