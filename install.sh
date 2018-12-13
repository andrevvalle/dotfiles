#!/bin/bash

function print { echo  "\033[1;32m=> $1\033[0m"; }
function msg_checking { echo  "\033[1;32m=> $1 ✔\033[0m"; }
function msg_installing { echo  "\033[1;33m==> $1 [updating] ✔\033[0m"; }
function msg_install { echo  "\033[1;33m==> $1 [installing]: $ $2\033[0m"; }
function msg_ok { echo  "\033[1;32m==> $1 installed ✔\033[0m"; }
function msg { echo  "\033[0;32m$1\033[0m"; }
function msg_alert { echo "\033[1;31m✖ $1 ✖\033[0m"; }

msg ' __    __    __  __        _____     ______    ______   ______   __     __         ______     ______    '
msg '/\ "-./  \  /\ \_\ \      /\  __-.  /\  __ \  /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   '
msg '\ \ \-./\ \ \ \____ \     \ \ \/\ \ \ \ \/\ \ \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  '
msg ' \ \_\ \ \_\ \/\_____\     \ \____-  \ \_____\   \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ '
msg '  \/_/  \/_/  \/_____/      \/____/   \/_____/    \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ '
msg '                                                                                                        '

# -- Dotfiles
if [[ -d "$HOME/.dotfiles" ]]; then
    msg_checking "dotfiles"
else
    msg_install "dotfiles" "git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles"
    git clone https://github.com/andrevvalle/dotfiles.git $HOME/.dotfiles
fi

# -- Installers ----------------------------------------------------------------
sh $HOME/.dotfiles/brew/global.sh
sh $HOME/.dotfiles/node/global.sh
sh $HOME/.dotfiles/git/global.sh
sh $HOME/.dotfiles/ruby/global.sh
sh $HOME/.dotfiles/zsh/global.sh
sh $HOME/.dotfiles/softwares/install.sh

