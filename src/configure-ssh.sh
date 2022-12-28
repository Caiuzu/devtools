# Verifica se a chave Ed25519 já existe
if [ ! -f ~/.ssh/id_ed25519.pub ]; then
  # Cria a chave Ed25519
  ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519
fi

# Imprime o conteúdo do arquivo id_ed25519.pub
cat ~/.ssh/id_ed25519.pub