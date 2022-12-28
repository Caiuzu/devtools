# Instala o SDKMAN
curl -s "https://get.sdkman.io" | bash

# Adiciona o comando source "$HOME/.sdkman/bin/sdkman-init.sh" ao arquivo .bashrc
echo "source \"$HOME/.sdkman/bin/sdkman-init.sh\"" >> ~/.bashrc

# Adiciona o comando source "$HOME/.sdkman/bin/sdkman-init.sh" ao arquivo .zshrc
echo "source \"$HOME/.sdkman/bin/sdkman-init.sh\"" >> ~/.zshrc

# Atualiza o SDKMAN
sdk update

# Instala o Java 11
sdk install java 11.0.9.hs-adpt

# Define o Java 11 como a versão padrão
sdk default java 11.0.9.hs-adpt

# Instala o Java 8
sdk install java 8.0.275.hs-adpt

# Instala o Gradle
sdk install gradle