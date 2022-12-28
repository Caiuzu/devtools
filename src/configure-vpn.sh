# Verifica se o pacote de instalação do AnyConnect já foi baixado
if [ ! -f "anyconnect-install.tar.gz" ]; then
  # Baixa o pacote de instalação do AnyConnect
  wget https://www.cisco.com/link-to-anyconnect-download-page -O anyconnect-install.tar.gz

  # Descompacta o pacote
  tar -xzf anyconnect-install.tar.gz
fi

# Verifica se o openconnect está instalado
if ! command -v openconnect &> /dev/null; then
  # Instala o openconnect
  apt-get install -y openconnect
fi

# Verifica a versão do AnyConnect instalada
installed_version=$(anyconnect --version | grep "AnyConnect VPN" | cut -d " " -f 3)

# Baixa a versão mais recente do AnyConnect
latest_version=$(wget -qO- https://www.cisco.com/link-to-anyconnect-download-page | grep "AnyConnect VPN" | cut -d " " -f 3)

# Verifica se é necessário atualizar o AnyConnect
if [ "$installed_version" != "$latest_version" ]; then
  # Desinstala a versão antiga do AnyConnect
  ./uninstall.sh

  # Executa o script de instalação da versão mais recente
  ./install.sh
fi

# Cria um alias para o AnyConnect
echo "alias vpn='anyconnect'" >> ~/.bashrc

# Solicite o endereço do servidor VPN e as credenciais de login
read -p "Digite o endereço do servidor VPN: " vpn_server
read -p "Digite o usuário: " vpn_user
read -sp "Digite a senha: " vpn_password

# Adiciona o servidor VPN e as credenciais de login na configuração do AnyConnect
echo "server $vpn_server" >> ~/.anyconnect
echo "username $vpn_user" >> ~/.anyconnect
echo "password $vpn_password" >> ~/.anyconnect

