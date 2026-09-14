#!/bin/zsh
set -eu
DOT="${0:A:h}"

link() {
  local src="$DOT/$1" dst="$HOME/$1"
  mkdir -p "$(dirname "$dst")"
  if [[ -e "$dst" && ! -L "$dst" ]]; then
    mv "$dst" "$dst.bak"
    echo "backup: $dst -> $dst.bak"
  fi
  ln -sfn "$src" "$dst"
  echo "linked: $1"
}

link .zshrc

