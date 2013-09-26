ENVDIR=$HOME/.env

# Setup .env and dot files
test -d $ENVDIR || git clone git://github.com/arasmus/env.git $ENVDIR
find $ENVDIR -type f -name .\* -exec ln -is {} $HOME \;

# Setup zsh
d=~/.oh-my-zsh
test -d $d || git clone git://github.com/robbyrussell/oh-my-zsh.git $d
test $SHELL = /bin/zsh || echo -e "To make zsh your default shell, run:\n    chsh -s /bin/zsh"

# Setup vim
d=~/.vim/bundle
mkdir -p $d
test -d $d/neobundle.vim || git clone git://github.com/Shougo/neobundle.vim $d/neobundle.vim
vim +NeoBundleInstall! +q
ln -s $ENVDIR/vim/* $d/..
