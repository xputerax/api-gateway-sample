.PHONE: build run use-krakend

build:
	docker buildx build -t apigwsample/auth --load ./auth-service
	docker buildx build -t apigwsample/product --load ./product-service

run:
	docker compose up -d
	docker compose ps
	docker compose top

use-krakend:
	docker compose -f docker-compose.krakend.yml up -d
	docker compose ps
	docker compose top

use-apisix:
	docker compose -f docker-compose.apisix.yml up -d
	docker compose ps
	docker compose top