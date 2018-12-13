source $HOME/.dotfiles/common/functions.sh

# update gems
if which gem &> /dev/null; then
    msg_checking "gem"
    sudo gem update --system
    echo "gem"
fi
