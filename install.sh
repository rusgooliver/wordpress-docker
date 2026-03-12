#! /bin/bash

# обновим список пакетов
sudo apt update && sudo apt upgrade -y

#  установим git и зависимости для Docker
sudo apt install -y curl apt-transport-https ca-certificates software-properties-common

# установим GPG‑ключ Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# добавим repo Docker
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# установим Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# установим Docker Compose:
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "Установили необходимые компоненты"

# добавим пользователя docker
sudo usermod -aG docker $USER

# проверка установок
docker --version
docker-compose --version

#предложение изменения дефолтовых учетных записей
echo "Опционально, для безопасности приложения, командой nano docker-compose.yml отредактируйте файл: измените пароль для root и user для mysql_db. После этого для продолжения выполните команду docker-compose up -d"
