# Identifica a distribuição Linux
distro=$(lsb_release -si)

# Verifica se a distribuição é Ubuntu
if [ "$distro" == "Ubuntu" ]; then
  # Adiciona o repositório do Google Chrome
  wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list

  # Atualiza a lista de pacotes
  apt-get update

  # Instala o Google Chrome
  apt-get install -y google-chrome-stable

  # Instala o Gnome plug-in do Google Chrome
  apt-get install -y chrome-gnome-shell

  # Instala o GTK+3
  apt-get install -y libgtk-3-dev

  # Instala o Visual Studio Code
  snap install --classic code

  # Instala o JetBrains Toolbox
  snap install jetbrains-toolbox

  # Instala o Lens
  snap install lens

  # Instala o AnyDesk
  snap install anydesk

  # Instala o Postman
  snap install postman

  # Instala o Flameshot
  apt-get install -y flameshot

  # Substitui o atalho de Print Screen pelo Flameshot
  gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '["<Shift>Print"]'
  gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'flameshot gui'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'

  # Instala o htop
  apt-get install -y htop

  # Define o htop como atalho de teclado
  gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'htop'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'htop'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Primary><Shift>Escape'

  # Define o atalho de teclado para abrir o Nautilus no caminho "~/"
  gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']"
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'nautilus'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command 'nautilus ~'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Super>e'