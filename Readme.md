Wordpress в Docker
Инструкция:
1. Установи docker, docker-compose и git


2. Создай директорию проекта:
mkdir wordpress-docker
cd wordpress-docker

3. Клонируй файлы из этого репозитория
git clone 

Выполни команду для создания образов и запуска контейнеров
docker-compose up -d

Через несколько минут после завершения выполнения команды перейди на web страницу http://localhost:8080

Для завершения работы выполни
docker-compose down
