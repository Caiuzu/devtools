# **DEV-TOOLS**: [_Script de auto instalação e configuração de ferramentas utilizadas no dia-a-dia_]()

 
    ██████╗ ███████╗██╗   ██╗████████╗ ██████╗  ██████╗ ██╗     ███████╗
    ██╔══██╗██╔════╝██║   ██║╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
    ██║  ██║█████╗  ██║   ██║   ██║   ██║   ██║██║   ██║██║     ███████╗
    ██║  ██║██╔══╝  ╚██╗ ██╔╝   ██║   ██║   ██║██║   ██║██║     ╚════██║
    ██████╔╝███████╗ ╚████╔╝    ██║   ╚██████╔╝╚██████╔╝███████╗███████║
    ╚═════╝ ╚══════╝  ╚═══╝     ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝.sh



---

###### By: [@caiuzu](https://github.com/Caiuzu/)

<!-- Badges -->
<p align="center">
   <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
      <img alt="Caio Souza" src="https://img.shields.io/badge/-Caio Souza-black?style=flat&logo=Linkedin&logoColor=white" />
   </a>
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Caiuzu/devtools"/>
  <img alt="Repository size" src="https://views.whatilearened.today/views/github/Caiuzu/devtools.svg"/>
  <img alt="License" src="https://img.shields.io/badge/license-MIT-black"/>
</p>


<!-- Indice-->  
<p align="center">  
 <a href="#resumo">Resumo</a> •
 <a href="#-ssh-script-">SSH</a> •  
 <a href="#-docker-script-">Docker</a> •  
 <a href="#zsh-script-">ZSH</a> •  
 <a href="#sdkman--script-">SDKMAN</a> •  
 <a href="#-utils-script-">utils</a> •  
 <a href="#nvm-node-version-manager-script-">NVM</a> •  
 <a href="#git-script-">GIT</a> •  
 <a href="#vpn-script-">VPN</a> •  
 <a href="#awscli-script">AWSCLI</a> •
 <a href="#como-contribuir">Como Contribuir?</a>  
</p>  

---



# RESUMO:

Ao executar o comando abaixo, o script se adicionará na PATH do sistema, permitindo utilizar o comando devtools sem necessidade da execução do arquivo.

```
    bash devtool.sh
```

Após a primeira execução e adicionado na PATH, basta utilizar os comandos abaixo:

- Comandos para instalação **unitária** de ferramentas:
```
    devtools install ${zsh, ssh, sdkman, utils, docker, git, node, vpn}
```

- Comando para execução e instalação **completa** de todas as ferramentas:
```
    devtools install --all
```

---
---

## [ SSH script](src/configure-ssh.sh) :

Este script verifica se o arquivo ~/.ssh/id_ed25519.pub existe. Se não existir, ele usa o comando ssh-keygen para criar uma nova chave Ed25519 com o nome ~/.ssh/id_ed25519. Em seguida, ele imprime o conteúdo do arquivo ~/.ssh/id_ed25519.pub.
Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-ssh.sh
```

---

## [ DOCKER script](src/configure-docker.sh) :

Este script atualiza a lista de pacotes disponíveis, instala o Docker, adiciona o usuário atual ao grupo do Docker, reinicia o serviço do Docker e verifica se o Docker está instalado corretamente, rodando o comando hello-world. Em seguida, ele instala o Docker Compose, cria uma rede do Docker para o Portainer, baixa a imagem do Portainer e inicia o Portainer.

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-docker.sh
```

---

## [ZSH script](src/configure-zsh.sh) :

Este script atualiza a lista de pacotes disponíveis, instala o Zsh, instala o Oh My Zsh, instala o zsh-syntax-highlighting e o zsh-autosuggestions, e adiciona esses plugins ao arquivo ~/.zshrc. Em seguida, ele verifica se o Zsh já está configurado como o terminal padrão. Se não estiver, ele o adiciona como o terminal padrão usando o comando chsh.

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-zsh.sh
```

---

## [SDKMAN  script](src/configure-sdkman.sh) :

Este script instala o SDKMAN, adiciona o comando source "$HOME/.sdkman/bin/sdkman-init.sh" aos arquivos ~/.bashrc e ~/.zshrc, atualiza o SDKMAN, instala o Java 11 e o Java 8 e define o Java 11 como a versão padrão. Em seguida, ele instala o Gradle.

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-sdkman.sh
```
---

## [ UTILS script](src/configure-linux.sh) :

Este código define o htop como um atalho de teclado com o atalho `Ctrl+Shift+Esc`, e define o atalho de teclado `Win+E` para abrir o Nautilus no caminho ~/.

Instala e configura o Google Chrome com o Gnome plug-in, instala o GTK+3, o Visual Studio Code, o JetBrains Toolbox, o Lens, o AnyDesk, o Postman e o Flameshot,

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-linux.sh
```

---

---

## [NVM (Node Version Manager) script](src/configure-node.sh) :

Este código verifica se o NVM já está instalado, e, caso não esteja, instala o NVM. Em seguida, o script carrega o NVM e verifica se o Node já está instalado. Se o Node já estiver instalado, o script exibe uma mensagem e encerra. Se o Node não estiver instalado, o script verifica se um parâmetro foi informado. Se não foi, o script instala a última versão do Node. Se foi, o script instala a versão informada como parâmetro. Por fim, o script define a versão instalada como padrão e verifica se a instalação foi bem-sucedida, exibindo a versão do Node.

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-node.sh [versão]
```

Caso não seja informada uma versão, o script instalará a última versão do Node

--- 



## [GIT script](src/configure-git.sh) :

Este código verifica se o Git está instalado, e, caso não esteja, instala o Git. Em seguida, o script verifica se os parâmetros de nome e email foram informados, e, caso não tenham sido, exibe uma mensagem de uso. Se os parâmetros forem informados, o script define o nome e o email do usuário com os valores dos parâmetros. Por fim, o script verifica se a configuração foi aplicada, exibindo a lista de configurações globais do Git.

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-git.sh 'John Doe' john@email.com
```

---


## [VPN script](src/configure-vpn.sh) :

O script instala e configura o Cisco AnyConnect. Ele realiza as seguintes ações:

- Verifica se o pacote de instalação do AnyConnect já foi baixado. Caso não tenha sido, ele é baixado e descompactado.

- Verifica se o openconnect está instalado. Caso não esteja, ele é instalado.

- Verifica a versão do AnyConnect instalada e baixa a versão mais recente. Se a versão instalada for diferente da versão mais recente, a versão antiga é desinstalada e a versão mais recente é instalada.

- Cria um alias para o AnyConnect, facilitando o uso do comando.

- Solicite o endereço do servidor VPN e as credenciais de login e adiciona na configuração do AnyConnect.

- Executa o AnyConnect e se conecta ao servidor VPN.

- Verifica se a conexão foi bem-sucedida. Caso não tenha sido, exibe uma mensagem de erro e finaliza o script.

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-vpn.sh
```

---

## [AWSCLI script](src/configure-awscli.sh):


Esse script realiza as seguintes ações:

Verifica se o Python 3 já está instalado. Caso não esteja, ele é instalado.

Verifica se o pip (gerenciador de pacotes do Python) já está instalado. Caso não esteja, ele é instalado.

Atualiza o pip para a versão mais recente.

Instala o AWS CLI utilizando o pip.

Verifica se o AWS CLI Local já está instalado. Caso não esteja, ele é instalado.

Solicite as credenciais de acesso à sua conta na AWS e configura o AWS CLI com elas.

Verifica se a configuração do AWS CLI foi bem-sucedida. Caso tenha sido, exibe uma mensagem de sucesso. Caso contrário, exibe uma mensagem

Você pode executar o script completo unitariamente com o seguinte comando:

```
bash configure-awscli.sh
```

---


---

## Como Contribuir?

Para organizar o nosso fluxo de trabalho, seguimos de forma conceitual o modelo do
[Git Flow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow). Os passos para contribuir com
o projeto são:

- Criar uma feature branch a partir da `develop`;
- Desenvolver o que precisar nesta nova branch;
- Criar um Pull Request;
- Após a aprovação do Pull Request, a sua versão deve ser mergeada na `develop`.

É importante seguir os padrões
de [commit semântico](https://blog.geekhunter.com.br/o-que-e-commit-e-como-usar-commits-semanticos/)

<details>
<summary>Prefixos para commit:</summary>

- **build**: Alterações que afetam o sistema de construção ou dependências externas (escopos de exemplo: gulp, broccoli,
  npm),
- **ci**: Mudanças em nossos arquivos e scripts de configuração de CI (escopos de exemplo: Travis, Circle, BrowserStack,
  SauceLabs);
- **docs**: referem-se a inclusão ou alteração somente de arquivos de documentação;
- **feat**: Tratam adições de novas funcionalidades ou de quaisquer outras novas implantações ao código;
- **fix**: Essencialmente definem o tratamento de correções de bugs;
- **perf**: Uma alteração de código que melhora o desempenho;
- **refactor**: Tipo utilizado em quaisquer mudanças que sejam executados no código, porém não alterem a funcionalidade
  final da tarefa impactada;
- **style**: Alterações referentes a formatações na apresentação do código que não afetam o significado do código, como
  por exemplo: espaço em branco, formatação, ponto e vírgula ausente etc.);
- **test**: Adicionando testes ausentes ou corrigindo testes existentes nos processos de testes automatizados (TDD);
- **chore**: Atualização de tarefas que não ocasionam alteração no código de produção, mas mudanças de ferramentas,
  mudanças de configuração e bibliotecas que realmente não entram em produção;
- **env**: basicamente utilizado na descrição de modificações ou adições em arquivos de configuração em processos e
  métodos de integração contínua (CI), como parâmetros em arquivos de configuração de containers.
- **improvement**: commits que melhoram uma implementação atual sem adicionar um novo recurso ou consertar um bug.

-----

</details>

---

TODO:
- [ ] Alterar os parametros mais internos para solicitações no terminal;
- [ ] Criar um `devtool --help` que lista todos os comandos;
- [ ] No script configure-git.sh em vez de configurar global, permitir selecionar -> bitbuck, github, gitlab ou global;
- [ ] Rever o script de docker / docker-compose

DONE:
- [X] Permitir que caso o nvm esteja instalado, ele questione se deseja alterar a versão. Se sim, solicita a versão desejada.