ENVDIR=$HOME/.env

# Setup .env and dot files
test -d $ENVDIR || git clone git://github.com/arasmus/env.git $ENVDIR
find $ENVDIR -type f -name .\* -exec ln -s {} $HOME \;

# Setup zsh
d=~/.oh-my-zsh
test -d $d || git clone git://github.com/robbyrussell/oh-my-zsh.git $d
test $SHELL = /bin/zsh || echo -e "To make zsh your default shell, run:\n    chsh -s /bin/zsh"
