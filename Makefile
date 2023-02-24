DATA_PATH = /home/dkarhan/data

up: makeFolder
	cd srcs	&& docker-compose up -d

build: makeFolder
	cd srcs	&& docker-compose build

start:
	cd srcs && docker-compose start

stop:
	cd srcs && docker-compose stop

down:
	cd srcs && docker-compose down

makeFolder:
	@mkdir -p ${DATA_PATH}
	@mkdir -p ${DATA_PATH}/wordpress
	@mkdir -p ${DATA_PATH}/db

clean: down
	sudo rm -rf ${DATA_PATH}
	docker system prune -af

re: clean up

.PHONY: run clean stop reload
