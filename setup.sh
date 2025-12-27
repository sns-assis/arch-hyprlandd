#!/bin/bash
set -e

echo "🚀 Iniciando setup Arch Linux + Hyprland"
echo "--------------------------------------"

# Garante que estamos na raiz do repo
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

echo "📦 Instalando pacotes..."
bash scripts/install-packages.sh

echo "📂 Criando pastas básicas..."
bash scripts/create-folders.sh

echo "🔗 Aplicando configurações (dotfiles)..."
bash scripts/link-dotfiles.sh

echo "🔧 Ativando serviços..."
bash scripts/enable-services.sh

echo "✅ Setup finalizado com sucesso!"
echo "👉 Reinicie o sistema se necessário."
