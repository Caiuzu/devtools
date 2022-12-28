# Verifica se o NVM já está instalado
if [ -d "$HOME/.nvm" ]; then
  echo "O NVM já está instalado."
  exit 0
fi

# Instala o NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Carrega o NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Verifica se o Node já está instalado
if nvm ls | grep -q "default ->"; then
  echo "O Node já está instalado."
  exit 0
fi

# Verifica se um parâmetro foi informado
if [ "$#" -ne 1 ]; then
  # Instala a última versão do Node
  nvm install node
else
  # Instala a versão informada como parâmetro
  nvm install "$1"
fi

# Define a versão instalada como padrão
nvm alias default node

# Verifica se a instalação foi bem-sucedida
node -v