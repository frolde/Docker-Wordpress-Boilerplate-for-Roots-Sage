##
## General
##

.PHONY: start stop kill killing-me-softly with-this-song restart rebuild reset shell

start:
	docker-compose up -d

stop:
	docker-compose down

kill:
	docker-compose down --rmi all -v

killing-me-softly:
	docker-compose down --rmi all

with-this-song:
	make start

restart:
	make stop start

rebuild:
	make killing-me-softly with-this-song

reset:
	make kill start

shell:
	docker-compose exec wordpress bash


##
## Roots/Sage
##

.PHONY: setup-roots-sage theme-install theme-lint theme-build theme-build-production browsersync
CUSTOMTHEME_DIR = ${CURRENT_DIR}/src/themes/$(shell cat config/generated_themes)

setup-roots-sage:
	(cd src/themes/ && composer create-project roots/sage $$projectname)
	(cd src/themes/$$projectname && yarn)
	(echo '!/src/themes/'$$projectname'/'  >> .gitignore)
	(echo $$projectname  >> config/generated_themes)

theme-install:
	(cd src/themes/fritjofoldewurtel && yarn install)

theme-lint:
	(cd src/themes/fritjofoldewurtel && yarn lint)

theme-build:
	(cd src/themes/fritjofoldewurtel && composer install && yarn build)

theme-build-production:
	(cd src/themes/fritjofoldewurtel && composer install --no-dev && yarn build:production)

browsersync:
	(cd src/themes/fritjofoldewurtel && yarn start)
