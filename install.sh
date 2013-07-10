ENVDIR=$HOME/.env

# Setup .env and dot files
test -d $ENVDIR || git clone git://github.com/arasmus/env.git $ENVDIR
find $ENVDIR -type f -name .\* -exec ln -s {} $HOME \;

# Setup zsh
d=~/.oh-my-zsh
test -d $d || git clone git://github.com/robbyrussell/oh-my-zsh.git $d
chsh -s /bin/zsh
