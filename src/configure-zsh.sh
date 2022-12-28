# Atualiza a lista de pacotes disponíveis
apt-get update

# Instala o Zsh
apt-get install -y zsh

# Instala o Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instala o zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Instala o zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Adiciona o zsh-syntax-highlighting e o zsh-autosuggestions ao arquivo .zshrc
echo "plugins=(zsh-syntax-highlighting zsh-autosuggestions)" >> ~/.zshrc

# Verifica se o Zsh já está configurado como o terminal padrão
if [ "$SHELL" != "/usr/bin/zsh" ]; then
  # Adiciona o Zsh como o terminal padrão
  chsh -s /usr/bin/zsh
fi