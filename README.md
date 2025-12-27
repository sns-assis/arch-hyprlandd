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
- Pacotes oficiais (`pacman`)
- Pacotes AUR (`yay`)

---

## 🚀 Instalação (novo PC / VM limpa)

> ⚠️ **Recomendado apenas para sistemas novos**
>  
> Não execute em um sistema já personalizado sem revisar os scripts.

```bash
git clone https://github.com/sns-assis/arch-hyprlandd.git
cd arch-hyprlandd
bash scripts/install.sh

