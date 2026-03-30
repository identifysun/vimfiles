#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

info()  { printf "\033[34m[info]\033[0m  %s\n" "$1"; }
ok()    { printf "\033[32m[ok]\033[0m    %s\n" "$1"; }
warn()  { printf "\033[33m[warn]\033[0m  %s\n" "$1"; }

# Create a symlink safely: back up existing file if it's not already the correct link.
link_file() {
    local src="$1" dst="$2"

    if [ -L "$dst" ]; then
        local current
        current="$(readlink "$dst")"
        if [ "$current" = "$src" ]; then
            ok "$dst -> $src (already linked)"
            return
        fi
        warn "$dst -> $current (relink to $src)"
        rm "$dst"
    elif [ -e "$dst" ]; then
        warn "$dst exists, backing up to ${dst}.bak"
        mv "$dst" "${dst}.bak"
    fi

    ln -s "$src" "$dst"
    ok "$dst -> $src"
}

# ── Vim ──────────────────────────────────────────────────────────────────────
info "Setting up Vim..."
mkdir -p ~/.vim/autoload ~/.vim/bundle
link_file "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
link_file "$DOTFILES_DIR/gvimrc" "$HOME/.gvimrc"

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    info "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
else
    ok "Vundle already installed"
fi

# ── tmux ─────────────────────────────────────────────────────────────────────
info "Setting up tmux..."
if [ ! -d "$HOME/.tmux" ]; then
    info "Installing gpakosz/.tmux framework..."
    git clone https://github.com/gpakosz/.tmux.git "$HOME/.tmux"
else
    ok "gpakosz/.tmux already installed"
fi
link_file "$HOME/.tmux/.tmux.conf" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/tmux.conf.local" "$HOME/.tmux.conf.local"

# ── Ghostty ──────────────────────────────────────────────────────────────────
info "Setting up Ghostty..."
mkdir -p "$HOME/.config/ghostty"
link_file "$DOTFILES_DIR/ghostty.config" "$HOME/.config/ghostty/config"

# ── Done ─────────────────────────────────────────────────────────────────────
echo ""
info "Installation complete."
info "Open Vim and run :PluginInstall to install plugins."
