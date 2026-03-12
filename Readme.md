Wordpress в Docker

Инструкция:

1. Создай директорию проекта:
mkdir wordpress-docker
cd wordpress-docker

Шаги 2-5 выполни, если у тебя не установлены doсker и docker-compose.

2. Установи wget и скачай файл со скриптом установки необходимых пакетов для docker. 
sudo apt install wget
wget https://github.com/rusgooliver/wordpress-docker/blob/main/install.sh
wget https://github.com/rusgooliver/wordpress-docker/blob/main/docker-compose.yaml

3. Разреши выполняться скрипту
chmod +x install.sh

4. Запусти скрипт установки
./install.sh 

5. Скрипт предложит исправить дефолтовые логин и пароль для mysql. Сделай это, если требуется.

6. Выполни команду для создания образов и запуска контейнеров, находясь в директории с файлом docker-compose.yaml
docker-compose up -d

7. Через несколько минут после завершения выполнения команды перейди на web страницу http://localhost:8080
Если ты работаешь на удаленной ВМ без GUI используй на своей рабочей станции visual studio для проброса в твой браузер

8. Для завершения работы приложения выполни
docker-compose down
