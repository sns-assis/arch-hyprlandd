#!/bin/bash
set -e

echo "🔧 Ativando serviços do sistema..."

SERVICES=(
  NetworkManager
  bluetooth
  sddm
)

for service in "${SERVICES[@]}"; do
  if systemctl list-unit-files | grep -q "$service"; then
    echo "✅ Habilitando $service"
    sudo systemctl enable "$service"
  else
    echo "⚠️ Serviço $service não encontrado, pulando..."
  fi
done

echo "✅ Serviços configurados."
