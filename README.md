# Arch Linux + Hyprland Setup

Configuração pessoal do Arch Linux com Hyprland, focada em **reprodutibilidade** e **setup rápido em novo PC**.

Este repositório contém:
- scripts de instalação automática
- pacotes oficiais e AUR
- configurações do Hyprland e apps relacionados
- dotfiles da HOME

------

## 📦 O que este setup instala/configura

- Hyprland
- Waybar
- Kitty
- Rofi
- SDDM
- ZSH como shell padrão
# Arch Linux + Hyprland Dotfiles

Este repositório contém **toda a minha configuração pessoal do Arch Linux com Hyprland**, organizada para que eu consiga **reinstalar tudo em um novo PC com poucos comandos**.

Inclui:
- Hyprland
- Waybar
- SDDM
- Kitty
- Zsh
- Rofi
- Scripts de automação
- Lista de pacotes oficiais e AUR

---

## 📁 Estrutura do repositório

```text
arch-hyprlandd/
├── config/                  # Configurações (~/.config)
│   ├── hypr/
│   ├── waybar/
│   ├── kitty/
│   └── rofi/
├── dotfiles/                # Arquivos da home (.zshrc, etc)
├── scripts/
│   ├── install-packages.sh  # Instala pacotes (pacman + AUR)
│   ├── enable-services.sh   # Habilita serviços do systemd
│   └── setup.sh             # Setup completo em um comando
├── packages.txt             # Pacotes oficiais (pacman)
├── aur-packages.txt         # Pacotes AUR
├── .gitignore
└── README.md
- Pacotes oficiais (`pacman`)
- Pacotes AUR (`yay`)

---

##  Instalação (novo PC / VM limpa)

> ⚠️ **Recomendado apenas para sistemas novos**
>  
> Não execute em um sistema já personalizado sem revisar os scripts.

```bash
git clone https://github.com/sns-assis/arch-hyprlandd.git
cd arch-hyprlandd
bash scripts/install.sh

