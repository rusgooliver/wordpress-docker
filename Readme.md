Wordpress в Docker

Инструкция:

1. Создай директорию проекта:
`````mkdir wordpress-docker````` 

`````cd wordpress-docker````` 

Шаги 2-5 выполни, если у тебя не установлены doсker и docker-compose.

2. Скачай файл со скриптом установки необходимых пакетов для docker. 

`````wget https://github.com/rusgooliver/wordpress-docker/raw/main/install.sh`````

`````wget https://github.com/rusgooliver/wordpress-docker/raw/main/docker-compose.yaml`````

3. Разреши выполняться скрипту
`````chmod +x install.sh`````

4. Запусти скрипт установки
`````./install.sh`````

5. Командой `````nano docker-compose.yml````` отредактируйте файл: измените пароль для root и user для mysql_db

6. Выполни команду для создания образов и запуска контейнеров, находясь в директории с файлом docker-compose.yaml
`````sudo docker-compose up -d`````

7. Через несколько минут после завершения выполнения команды перейди на web страницу 
`````http://localhost:8080`````

WordPress предложит выполнить настройку.

P.S.: Если ты работаешь на удаленной ВМ без GUI используй на своей рабочей станции visual studio для проброса web-интерейс в твой браузер.

8. Для завершения работы веб-приложения выполни
````sudo docker-compose down`````

![Скриншот Wordpress](screenshot.png)
