COMPOSER=/bin/composer
vendor: $(COMPOSER)
	$(COMPOSER) install

test:
	./vendor/bin/phpunit -c phpunit.xml
.PHONY: test

lint:
	./vendor/bin/phpcs --ignore=vendor/ ./
.PHONY: lint