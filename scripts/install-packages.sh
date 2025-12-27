#!/bin/bash
set -e

echo "📦 Instalando pacotes oficiais (pacman)..."

if [ ! -f packages.txt ]; then
  echo "❌ packages.txt não encontrado!"
  exit 1
fi

sudo pacman -Syu --needed - < packages.txt

echo "✅ Pacotes oficiais instalados."

# -------- AUR --------

if [ -f aur-packages.txt ]; then
  if ! command -v yay &>/dev/null; then
    echo "📦 Instalando yay (AUR helper)..."
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si
    cd -
  fi

  echo "📦 Instalando pacotes AUR..."
  yay -S --needed - < aur-packages.txt
fi

echo "🎉 Todos os pacotes instalados!"

