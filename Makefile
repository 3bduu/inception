
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
	docker volume rm wordpress-dbase mariadb-dbase

fclean : clean
	docker system prune -af
	sudo rm -fr /home/abenlahb/data/wordpress-dbase/*
	sudo rm -fr /home/abenlahb/data/mariadb-dbase/*

re : fclean all