# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wgriffiths"

# Never know when you're gonna need to popd!
setopt AUTO_PUSHD

# Allow completing of the remainder of a command
bindkey "^N" insert-last-word

autoload -U compinit
compinit -i

# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

# Define the shell function.
adra(){
    cd ~/git/"${1:-}"
}

# Tell zsh to autocomplete directory names in the same directory as
# the function's when typing a command based on the shell function.
compctl -/ -W ~/git adra


proj(){
 cd ~/Development/projects/$1;
}
compctl -W ~/Development/projects -/ proj

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

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
plugins=(git mvn svn brew git-flow)

source $ZSH/oh-my-zsh.sh

# Source my custom files after oh-my-zsh so I can override things.
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions
source $HOME/.dotfiles/zsh/env

# Customize to your needs...

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export PATH=~/bin:$PATH
export PATH=$PATH:/home/wgriffiths/Development/handy-scripts/bin

export TERM="xterm-256color"

PERL_MB_OPT="--install_base \"/home/wgriffiths/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/wgriffiths/perl5"; export PERL_MM_OPT;

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


export PATH="/usr/local/opt/libxslt/bin:$PATH"
export PATH="$HOME/tools/flutter/bin/:$PATH"
export LDFLAGS="-L/usr/local/opt/libxslt/lib"
export CPPFLAGS="-I/usr/local/opt/libxslt/include"

export PKG_CONFIG_PATH="/usr/local/opt/libxslt/lib/pkgconfig"
