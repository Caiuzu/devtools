# Verifica se o Python já está instalado
if ! command -v python3 &> /dev/null; then
  # Instala o Python 3
  apt-get install -y python3
fi

# Verifica se o pip (gerenciador de pacotes do Python) já está instalado
if ! command -v pip3 &> /dev/null; then
  # Instala o pip
  apt-get install -y python3-pip
fi

# Atualiza o pip
pip3 install --upgrade pip

# Instala o AWS CLI
pip3 install awscli

# Verifica se o AWS CLI Local já está instalado
if ! command -v aws-cli-local &> /dev/null; then
  # Instala o AWS CLI Local
  pip3 install awscli-local
fi

# Solicite as credenciais de acesso à sua conta na AWS
#read -p "Digite o ID da sua conta na AWS: " aws_access_key_id
#read -sp "Digite a chave de acesso da sua conta na AWS: " aws_secret_access_key

# Configura o AWS CLI com as credenciais de acesso
#aws configure set aws_access_key_id "$aws_access_key_id"
#aws configure set aws_secret_access_key "$aws_secret_access_key"

# Verifica se a configuração do AWS CLI foi bem-sucedida
if aws s3 ls &> /dev/null; then
  echo "AWS CLI configurado com sucesso!"
else
  echo "Erro ao configurar o AWS CLI. Verifique se as credenciais estão corretas."
fi