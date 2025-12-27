#!/bin/bash
set -e

echo "📁 Criando pastas..."
mkdir -p ~/.config

echo "⚙️ Copiando configurações..."
cp -r config/* ~/.config/

echo "🏠 Copiando arquivos da home..."
cp home/.zshrc ~/

echo "✅ Instalação finalizada!"
