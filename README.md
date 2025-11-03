# Configurações Davyusow

## Índice

1. [Sistemas Operacionais](#1-sistemas-operacionais)
2. [Instalação](#2-instalação)
   - [2.1 Arch Linux](#21-arch-linux)
   - [2.2 Windows](#22-windows)
3. [Pós-Instalação](#3-pós-instalação)
   - [3.1 Arch Linux](#31-arch-linux)
   - [3.2 Windows](#32-windows)
4. [Terminal](#5-terminal)
5. [Programas](#6-programas)

---

## 1. Sistemas Operacionais

Tenho preferência por sistemas Linux, atualmente usando **Arch Linux**. Já utilizei e não teria problemas em usar:

- **Debian**
- **Zorin OS**
- **openSUSE**

Além dos sistemas Linux, usei bastante o **Windows 10** e por um tempo o **Windows 11**, porém sinto que preciso fazer mais ajustes para usar como desejo e mesmo assim minha máquina não atinge o desempenho satisfatório, apesar de ser totalmente funcional.

---

## 2. Instalação

### 2.1 Arch Linux

Como meu sistema atual é o Arch, utilizo o script `archinstall` por conveniência. Configurações básicas utilizadas:

| Configuração      | Valor                       |
| ----------------- | --------------------------- |
| Layout de teclado | `pt-BR-abnt2`               |
| Idioma            | `pt-BR`                     |
| Repositórios      | `extra`, `multilib`, `base` |
| Suporte a Flatpak | Habilitado                  |
| Kernels           | `linux` & `linux-lts`       |
| Ambiente gráfico  | GNOME                       |

### 2.2 Windows

Na instalação do Windows, realizo configurações básicas:

- Desativar todas as telemetrias
- Desativar serviços adicionais desnecessários

---

## 3. Pós-Instalação

### 3.1 Arch Linux

#### Atualização do Sistema

```bash
sudo pacman -Syu
```

> **Nota:** Mantenho uma rotina de atualizações semanais todo fim de semana.

#### Configurações do GNOME Control Center

| Seção           | Configuração           | Valor                             |
| --------------- | ---------------------- | --------------------------------- |
| **Tela**        | Resolução              | 1920×1080p                        |
|                 | Escala                 | 100%                              |
|                 | Luz Noturna            | 18:00 - 06:00 <br> Temperatura: 2 |
| **Multitarefa** | Canto Ativo            | Desativado                        |
| **Aparência**   | Cor de Realce          | Verde ou Laranja                  |
| **Teclado**     | Alternar Tela Inteira  | `Alt + Enter`                     |
|                 | Ativar Menu da Janela  | Desativado                        |
|                 | Pasta Pessoal          | `Super + E`                       |
|                 | Ocultar Janelas        | `Super + D`                       |
|                 | Mostrar Notificações   | Desativado                        |
|                 | Terminal Personalizado | `Ctrl + Alt + T` → `kgx`          |

#### Instalação do GNOME Tweaks

```bash
sudo pacman -S gnome-tweaks
```

#### Configurações do GNOME Tweaks

- **Janelas**
  - Botão de maximizar
  - Botão de minimizar
  - Centralizar novas janelas
  - Tecla de ação de janela: `Super`

### 3.2 Windows

#### Configurações do Sistema

- **Tema:** Escuro
- **Barra de Tarefas:**
  - Widgets desativados
  - Pesquisa desativada
  - Alinhamento à esquerda
- **Área de Trabalho:**
  - Ícones ocultos
- **Display:**
  - Resolução: 1920×1080p
  - Escala: 100%

---
poderia formatar, corrigir ortografia e adicionar os links dos projetos oficiais dos projetos citados?

## 4. Terminal

### 4.1 Gnome Terminal

Por opção minha eu uso o gnome terminal, eu acho que ele têm mais funções que o console, além de ter mais customizações e combinar bem com vários temas. Para instalar o gnome terminal basta usar o comando:

```bash
sudo pacman -S gnome-terminal
```

Já gosto de instalar aqui a fonte monoespaçada que uso no terminal, sendo ela a `fira code`, para instalar ela também basta 1 comando:

```bash
sudo pacman -S ttf-firacode-nerd
```

Após isso eu ativo a fonte no terminal indo em<br>`preferências` -> `Perfis` -> `Padrão` -> `Texto` -> `Fontes Personalizadas` -> `FiraCode Nerd Font Mono`

Na aba de cores eu apenas ativo as cores do tema do sistema.

### 4.2 Fish Shell

No Arch linux eu também gosto mais de usar o [Fish shell](link do github), por ele ser mais amigável e também permitir várias personalizações com temas e plugins, para isso eu primeiro instalo o fish shell:

```bash
sudo pacman -S fish
```

E para trocar o shell padrão do arch basta fazer mais este comando:

```bash
chsh -s /usr/bin/fish
```

E para terminar vamos instalar o [oh-my-fish](link do github), um gerenciador e repositório de temas e plugins para o fish, para instalar eu recomendo seguir o guia do repositório oficial para informações mais atualizadas e completas, aqui irei apenas assumir que o omf esta instalado.

Com o omf instalado eu instalo os seguintes temas e plugins:

| Plugins             | Descrição                                              |
| ------------------- | ------------------------------------------------------ |
| `archlinux`         | funções e aliases para o archlinux                     |
| `bass`              | melhor compatibilidade de scripts bash                 |
| `colored`-man-pages | cores no comando man                                   |
| `config`            | para configurações pessoais                            |
| `docker`-machine    | funções e autocomplete integrados com o docker machine |
| `fish`-spec         | testes automatizados do fish                           |
| `fish_logo`         | logo bonitinha quando inicia o fish                    |
| `git`-flow          | aliases e funções para o git flow                      |
| `git`-refresh       | atualiza os repositórios git dinâmicamente             |
| `mvn`               | agiliza o desenvolvimento com o maven em java          |
| `tmux`-zen          | integra o fish ao tmux                                 |
| `bobthefish`        | tema que eu prefiro do omf                             |

Para cada um deles basta instalar com

```bash
omf install <plugin>
```

### 4.3 Programas CLI

E por último os programas que utilizo via cli, a maioria são utilirários mas alguns são essenciais e indispensáveis:

> o comando esta abstraindo o `sudo pacman -S`

| Programa  | Descrição                                            |          Comando          |
| --------- | ---------------------------------------------------- | :-----------------------: |
| Git       | software de versionamento de código                  |           `git`           |
| Docker    | ferramenta de containerzação de pacotes              | `docker` `docker-compose` |
| btop      | monitoramento de recursos                            |           btop            |
| maven     | gerenciamento de projetos java                       |           `mvn`           |
| bat       | versão mais bonitinha e interativa do `cat`          |            bat            |
| stack     | gerenciamento de repositórios e dependências haskell |          `stack`          |
| tmux      | multiplexador de terminal para multitarefa cli       |          `tmux`           |
| fastfetch | não pode faltar se não o arch não liga               |        `fastfetch`        |
| onefetch  | a mesma coisa mas o repositório não abre             |        `onefetch`         |
| curl      | transferir dados na rede via cli                     |          `curl`           |

## 5. Programas

### 5.1 Arch Linux

E por último a minha lista de programas que uso no arch:

> Obs: as configurações de alguns destes programas estarão nos arquivos do repositório

| Programa     | Descrição                                    |
| ------------ | -------------------------------------------- |
| Obs-studio   | software de captura de tela                  |
| Gimp         | software avançado de edição de imagens       |
| vscodium     | editor de código com assitência de extensões |
| zed          | editor de código com foco em agilidade       |
| Thunderbird  | cliente de e-mails                           |
| Libre office | Suite office preferencial                    |
| anytype      | software de anotações avançado               |

---

## 4. Terminal

### 4.1 Gnome Terminal

Por opção minha, eu uso o [Gnome Terminal](https://help.gnome.org/users/gnome-terminal/stable/index.html.pt_BR). Eu acho que ele **tem** mais funções que o console, além de ter mais customizações e combinar bem com vários temas. Para instalar o Gnome Terminal, basta usar o comando:

```bash
sudo pacman -S gnome-terminal
```

Eu também gosto de instalar a fonte monoespaçada que uso no terminal, sendo ela a [Fira Code (Nerd Fonts)](https://github.com/ryanoasis/nerd-fonts). Para instalá-la, também basta **um** comando:

```bash
sudo pacman -S ttf-firacode-nerd
```

Após isso, eu ativo a fonte no terminal indo em:
`Preferências` -\> `Perfis` -\> `Padrão` -\> `Texto` -\> `Fontes Personalizadas` -\> `FiraCode Nerd Font Mono`

Na aba de cores, eu apenas ativo as cores do tema do sistema.

### 4.2 Fish Shell

No Arch Linux, eu também gosto mais de usar o [**Fish Shell**](https://fishshell.com/), por ele ser mais amigável e também permitir várias personalizações com temas e plugins. Para isso, eu primeiro instalo o Fish Shell:

```bash
sudo pacman -S fish
```

E para trocar o shell padrão do Arch, basta usar mais este comando:

```bash
chsh -s /usr/bin/fish
```

E, para terminar, vamos instalar o [**Oh My Fish**](https://github.com/oh-my-fish/oh-my-fish) (OMF), um gerenciador e repositório de temas e plugins para o Fish. Para instalar, eu recomendo seguir o guia do repositório oficial para informações mais atualizadas e completas. Aqui, irei apenas assumir que o OMF **está** instalado.

Com o OMF instalado, eu instalo os seguintes temas e plugins:

| Plugins | Descrição |
| :--- | :--- |
| `archlinux` | Funções e aliases para o Arch Linux |
| `bass` | Melhor compatibilidade de scripts Bash |
| `colored-man-pages` | Cores no comando `man` |
| `config` | Para configurações pessoais |
| `docker-machine` | Funções e autocomplete integrados com o Docker Machine |
| `fish-spec` | Testes automatizados do Fish |
| `fish_logo` | Logo bonita quando inicia o Fish |
| `git-flow` | Aliases e funções para o Git Flow |
| `git-refresh` | Atualiza os repositórios Git **dinamicamente** |
| `mvn` | Agiliza o desenvolvimento com o Maven em Java |
| `tmux-zen` | Integra o Fish ao Tmux |
| `bobthefish` | Tema que eu prefiro do OMF |

Para instalar cada um deles, basta usar:

```bash
omf install <plugin>
```

### 4.3 Programas CLI

E, por último, os programas que utilizo via CLI. A maioria são **utilitários**, mas alguns são essenciais e indispensáveis:

> O comando está abstraindo o `sudo pacman -S`

| Programa | Descrição | Comando(s) |
| :--- | :--- | :---: |
| [Git](https://git-scm.com/) | Software de versionamento de código | `git` |
| [Docker](https://www.docker.com/) | Ferramenta de **conteinerização** de pacotes | `docker` `docker-compose` |
| [btop](https://github.com/aristocratos/btop) | Monitoramento de recursos | `btop` |
| [Maven](https://maven.apache.org/) | Gerenciamento de projetos Java | `mvn` |
| [bat](https://github.com/sharkdp/bat) | Versão mais bonita e interativa do `cat` | `bat` |
| [stack](https://docs.haskellstack.org/en/stable/) | Gerenciamento de repositórios e dependências Haskell | `stack` |
| [tmux](https://github.com/tmux/tmux/wiki) | Multiplexador de terminal para multitarefa via CLI | `tmux` |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | Não pode faltar, senão o Arch não liga | `fastfetch` |
| [onefetch](https://github.com/o2sh/onefetch) | A mesma coisa, mas o repositório não abre | `onefetch` |
| [curl](https://curl.se/) | Transferir dados na rede via CLI | `curl` |

## 5\. Programas

### 5.1 Arch Linux

E, por último, a minha lista de programas que uso no Arch:

> **Obs.:** As configurações de alguns desses programas estarão nos arquivos do repositório.

| Programa | Descrição |
| :--- | :--- |
| [OBS Studio](https://obsproject.com/pt-br) | Software de captura de tela |
| [GIMP](https://www.gimp.org/) | Software avançado de edição de imagens |
| [VSCodium](https://vscodium.com/) | Editor de código com **assistência** de extensões |
| [Zed](https://zed.dev/) | Editor de código com foco em agilidade |
| [Thunderbird](https://www.thunderbird.net/pt-BR/) | Cliente de e-mails |
| [LibreOffice](https://pt-br.libreoffice.org/) | **Suíte** Office preferencial |
| [Anytype](https://anytype.io/) | Software de anotações avançado |

-----
