source $HOME/.dotfiles/common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "git clone git://github.com/ry/node.git"
    brew install node
    echo "OK"
fi

# n
if which n &> /dev/null; then
    msg_checking "n"
else
    msg_install "n" "sudo npm install -g n"
    sudo npm install -g n
    echo "OK"
fi

# gulp-cli
if which gulp &> /dev/null; then
    msg_checking "gulp"
else
    msg_install "gulp" "npm install -g gulp-cli"
    npm install -g gulp-cli
    echo "OK"
fi

# nodemon
if which nodemon &> /dev/null; then
    msg_checking "nodemon"
else
    msg_install "nodemon" "npm install -g nodemon"
    npm install -g nodemon
    msg_ok "OK"
fi

# webpack
if which webpack &> /dev/null; then
    msg_checking "webpack"
else
    msg_install "webpack" "npm install -g webpack"
    npm install -g webpack
    msg_ok "OK"
fi
