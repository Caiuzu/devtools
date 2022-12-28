# Verifica se a pasta workspace já existe
if [ ! -d "~/workspace" ]; then
  # Tentar criar a pasta workspace
  mkdir ~/workspace

  # Verifica se a pasta foi criada com sucesso
  if [ -d "~/workspace" ]; then
    # Exibe mensagem de sucesso
    echo "Pasta workspace criada com sucesso!"
  else
    # Exibe mensagem de erro
    echo "Erro ao criar a pasta workspace. Verifique suas permissões."
  fi
fi