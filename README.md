# Arch Linux + Hyprland Dotfiles

Configuração pessoal do Arch Linux usando Hyprland.

## Instalação

```bash
git clone https://github.com/SEU-USUARIO/arch-hyprland
cd arch-hyprland
./scripts/install.sh

## Pacotes

- `packages.txt` → pacotes oficiais (pacman)
- `aur-packages.txt` → pacotes AUR

Para instalar os pacotes oficiais:
```bash
sudo pacman -S --needed - < packages.txt

Para instalar os pacotes AUR (exemplo com yay):

yay -S --needed - < aur-packages.txt
