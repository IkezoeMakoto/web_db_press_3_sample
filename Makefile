setup:
	$(MAKE) up
	docker-compose run --rm app make -C blog vendor
.PHONY: setup

up:
	docker-compose up -d
.PHONY: up

down:
	docker-compose down
.PHONY: down

SERVICE=app
CMD=composer
exec:
	docker-compose run --rm ${SERVICE} ${CMD}
.PHONY: exec

REPO=docker.pkg.github.com/ikezoemakoto/web_db_press_3_sample
image/build:
	$(MAKE) -j image/build/app image/build/nginx

image/build/app:
	docker build -t $(REPO)/app:latest app

image/build/nginx:
	docker build -t $(REPO)/nginx:latest nginx
.PHONY: image/build image/build/app image/build/nginx

image/push:
	$(MAKE) -j image/push/app image/push/nginx

image/push/app:
	docker push $(REPO)/app:latest

image/push/nginx:
	docker push $(REPO)/nginx:latest
.PHONY: image/push image/push/app image/push/nginx