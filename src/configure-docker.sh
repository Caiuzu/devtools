# Atualiza a lista de pacotes disponíveis
apt-get update

# Instala o Docker
apt-get install -y docker.io

# Adiciona o usuário atual ao grupo do Docker
usermod -aG docker $USER

# Reinicia o serviço do Docker
systemctl restart docker

# Verifica se o Docker está instalado corretamente
docker run hello-world

# Instala o Docker Compose
apt-get install -y docker-compose

# Cria uma rede do Docker para o Portainer
docker network create portainer

# Baixa a imagem do Portainer
docker pull portainer/portainer

# Inicia o Portainer
docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer