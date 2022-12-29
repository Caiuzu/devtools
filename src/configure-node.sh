# Verifica se o NVM já está instalado
if [ -d "$HOME/.nvm" ]; then
  read -p "O NVM já está instalado. Deseja alterar a versão? (S/n) " alterar
  if [ "$alterar" != "S" ] && [ "$alterar" != "s" ]; then
	  exit 0
  fi
  read -p "Informe a versão:" versao
  echo "Buscando versão $versao..."
  
  # Carrega o NVM
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  
  # Instala a versão informada como parâmetro
  nvm install "$versao"

  # Define a versão instalada como padrão
  nvm alias default "$versao"
else
  # Instala o NVM
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

  # Carrega o NVM
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

  # Verifica se um parâmetro foi informado
  if [ "$#" -ne 1 ]; then
    # Instala a última versão do Node
    nvm install node
  else
    # Instala a versão informada como parâmetro
    nvm install "$1"
    
    # Define a versão instalada como padrão
    nvm alias default "$1"
  fi
fi

# Verifica se a instalação foi bem-sucedida
node -v