#!/bin/bash
set -e

echo "🚀 Arch Hyprland setup iniciado"

# Verifica se está rodando dentro do repo
if [ ! -f packages.txt ]; then
  echo "❌ Execute este script a partir da raiz do repositório"
  exit 1
fi

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
cp -r config/* ~/.config/

# -------------------------
# Dotfiles
# -------------------------
echo "🏠 Copiando dotfiles..."
cp dotfiles/.zshrc ~/

# -------------------------
# Shell padrão
# -------------------------
if command -v zsh &>/dev/null; then
  echo "🐚 Definindo ZSH como shell padrão..."
  chsh -s "$(which zsh)"
fi

echo "✅ Setup finalizado! Reinicie a sessão."

