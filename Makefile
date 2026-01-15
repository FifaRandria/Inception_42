.PHONY: all build up down clean fclean re

NAME = inception

all: build up

build:
	mkdir -p /home/fifrandr/data/mariadb_d_volume
	mkdir -p /home/fifrandr/data/wordpress_d_volume
	docker compose -f srcs/docker-compose.yml build

up:
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

clean: down
	docker compose -f srcs/docker-compose.yml down -v --remove-orphans

fclean: clean
	docker system prune -af --volumes
	sudo rm -rf /home/fifrandr/data/mariadb_d_volume
	sudo rm -rf /home/fifrandr/data/wordpress_d_volume

re: fclean all