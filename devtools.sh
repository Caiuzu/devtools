# Verifica se o script já está adicionado na PATH
if ! echo "$PATH" | grep -q "$PWD"; then
  # Adiciona o script na PATH
  echo "Adicionando o devtools na PATH..."
  echo "export PATH=$PWD:\$PATH" >> ~/.bashrc
  echo "Devtools adicionado com sucesso ;D"
  echo "Desenvolvido por @Caiuzu, com Café."
  source ~/.bashrc
fi

# Verifica se o script já está na PATH para execução
    #if ! grep -q "$(pwd)/devtools.sh" <<< "$PATH"; then
    # Adiciona o script na PATH
    #  echo "Adicionando o devtools na PATH..."
    #  echo -e '\n# Adiciona o devtools na PATH\nexport PATH="$PATH:$(pwd)"' >> ~/.bashrc
    #  echo "Devtools adicionado com sucesso ;D"
    #  echo "Desenvolvido por @Caiuzu, com Café."
    #  source ~/.bashrc
    #fi
#

# Função que exibe a barra de progresso
show_progress() {
  # Limpa a linha atual
  tput cuu 1 && tput el

  # Exibe a barra de progresso
  printf "["
  for ((i=0; i<100; i+=2)); do
    if [ $i -le $progress ]; then
      printf "#"
    else
      printf " "
    fi
  done
  printf "] %d%%\n" "$progress"
}

# Verifica o primeiro parâmetro
case "$1" in
  "info")
    # Informações sobre o script
    echo "Aperte os cintos. Inicializando devtools..."
    echo "Repo: https://github.com/Caiuzu/devtools"
    ;;

  "install")
    # Verifica o segundo parâmetro
    case "$2" in
      "zsh")
        # Executa o script de instalação do Zsh
        bash src/configure-zsh.sh
        ;;

      "ssh")
        # Executa o script de instalação do SSH
        bash src/configure-ssh.sh
        ;;

      "sdkman")
        # Executa o script de instalação do SDKMAN
        bash src/configure-sdkman.sh
        ;;

      "utils")
        # Executa o script de instalação de utilitários
        bash src/configure-linux.sh
        ;;

      "docker")
        # Executa o script de instalação do Docker
        bash src/configure-docker.sh
        ;;

      "git")
        # Executa o script de configuração do Git
        bash src/configure-git.sh "$3" "$4"
        ;;

      "node")
        # Executa o script de configuração do node via NVM
        bash src/configure-node.sh "$5"
        ;;

      "vpn")
      # Executa o script de instalação da VPN
      bash src/configure-vpn.sh
      ;;

      "--all")
        # Executa todos os scripts em sequência

        # Instala o Zsh
        bash src/configure-zsh.sh
        progress=$((progress + 10))
        show_progress

        # Solicita as variáveis para configuração do Git
        read -p "Digite o nome do usuário: " user_name
        read -p "Digite o e-mail do usuário: " user_email
        #global
        bash src/configure-git.sh "$user_name" "$user_email"
        progress=$((progress + 10))
        show_progress

        # Executa o script de instalação de utilitários
        bash src/configure-linux.sh
        progress=$((progress + 10))
        show_progress

        # Executa o script de instalação do Docker
        bash src/configure-docker.sh
        progress=$((progress + 10))
        show_progress

        # Executa o script de instalação do SDKMAN
        bash src/configure-sdkman.sh
        progress=$((progress + 10))
        show_progress

        # Instala o nvm / Node.js
        read -p "Digite a versão do Node.js (deixe em branco para instalar a versão mais recente): " node_version
        bash src/configure-sdkman.sh "$node_version"
        progress=$((progress + 10))
        show_progress
        ;;
    esac
    ;;
esac