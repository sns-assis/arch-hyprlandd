#!/bin/bash
set -e

echo "🚀 Arch Hyprland setup iniciado"

# -------------------------
# Pacotes
# -------------------------
echo "📦 Instalando pacotes..."
./scripts/install-packages.sh

# -------------------------
# Serviços
# -------------------------
if [ -f scripts/enable-services.sh ]; then
  echo "🔧 Ativando serviços..."
  ./scripts/enable-services.sh
else
  echo "⚠️ enable-services.sh não encontrado, pulando..."
fi

# -------------------------
# Configurações
# -------------------------
echo "⚙️ Copiando configurações..."
mkdir -p ~/.config

# Configs principais
[ -d config/hypr ] && cp -r config/hypr ~/.config/
[ -d config/waybar ] && cp -r config/waybar ~/.config/
[ -d config/kitty ] && cp -r config/kitty ~/.config/
[ -d config/rofi ] && cp -r config/rofi ~/.config/

# Fastfetch
if [ -d config/fastfetch ]; then
    mkdir -p ~/.config/fastfetch
    cp -r config/fastfetch/* ~/.config/fastfetch/
    echo "✅ Fastfetch configurado"
fi

# -------------------------
# Dotfiles
# -------------------------
[ -f dotfiles/.zshrc ] && cp dotfiles/.zshrc ~/

# -------------------------
# Shell padrão
# -------------------------
if command -v zsh &>/dev/null; then
  echo "🐚 Definindo ZSH como shell padrão..."
  chsh -s "$(which zsh)"
fi

echo "✅ Setup finalizado! Reinicie a sessão."
