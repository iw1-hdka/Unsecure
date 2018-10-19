up:
	- docker-compose up -d --build

composer:
	- docker-compose exec php composer install

build: up composer
	- 	grep -q -F "symfony.local" /etc/hosts || echo "127.0.0.1 symfony.local" | sudo tee -a /etc/hosts
