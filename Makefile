
all:up

up: 
	docker-compose -f ./srcs/docker-compose.yml up -d

down:	
	docker-compose -f ./srcs/docker-compose.yml down

stop:	
	docker-compose -f ./srcs/docker-compose.yml stop

start:	
	docker-compose -f ./srcs/docker-compose.yml start

ps:	
	docker ps

clean : down
	docker volume rm wordpress mariadb

fclean : clean
	docker system prune -af
	sudo rm -fr /home/abenlahb/data/wordpress/*
	sudo rm -fr /home/abenlahb/data/mariadb/*

re : fclean all