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