# Verifica se o Git está instalado
if ! command -v git > /dev/null; then
  # Instala o Git
  apt-get install -y git
fi

# Verifica se os parâmetros foram informados
if [ "$#" -ne 2 ]; then
  echo "Uso: configure-git nome email"
  exit 1
fi

# Define o nome do usuário
git config --global user.name "$1"

# Define o email do usuário
git config --global user.email "$2"

# Verifica se a configuração foi aplicada
git config --global --list | grep "user.name\|user.email"

#settar bitbuck, github, gitlab ou global como parametro