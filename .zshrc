# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="michelebologna"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

# OsX specific
if [[ $(uname) == "Darwin" ]] {
    # homebrew
    export PATH=/usr/local/share/python:$PATH
    export PATH=/usr/local/bin:/usr/local/sbin:$PATH
    # latex
    export PATH=$PATH:/usr/local/texlive/2013basic/bin/x86_64-darwin

    export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
    alias vim='mvim -v'
    alias vi='mvim -v'
}

# fasd
which fasd > /dev/null && {
    eval "$(fasd --init auto)"
    alias v='f -e vim' # quick opening files with vim
}

# Don't share history. It's annoying if working on several terminals
unsetopt share_history

# Some local configurations
test -e ~/.zshrc_local && source ~/.zshrc_local
