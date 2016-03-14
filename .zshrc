export workon_home=$home/.virtualenvs
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
plugins=(git, brew, osx, extract, z, pip, python, redis-cli, supervisor, tmux,
tmuxinator, vi-mode, virtualenvwrapper)

# tmux configure
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOSTART_ONCE=true
export ZSH_TMUX_AUTOCONNECT=true
export ZSH_TMUX_AUTOQUIT=$ZSH_TMUX_AUTOSTART
export ZSH_TMUX_FIXTERM=true
export ZSH_TMUX_ITERM2=false
export ZSH_TMUX_FIXTERM_WITHOUT_256COLOR="screen"
export ZSH_TMUX_FIXTERM_WITH_256COLOR="screen-256color"

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias ez="vim ~/.zshrc"  # edit zshrc
alias lz="source ~/.zshrc" # load zshrc
alias ev="vim ~/.vimrc"  # edit vimrc
alias et="vim ~/.tmux.conf"
# PS
alias psa="ps aux"  
alias psg="ps aux | grep "  
alias psp="ps aux | grep python"  
# show human friendly numbers and colors
alias df="df -h"
alias du="du -h -d 2" # human readable and depth 2
# moving around
alias cdb="cd -"
alias cls="clear;ls"
alias llg="ll | grep "

# Git 
alias gs="git status"
alias gi="vim .gitignore"

# shell function
alias tf="tail -f "

# kill
alias k9="kill -9 "

# alias ohmyzsh="mate ~/.oh-my-zsh"
#  Global Alias
alias -g ...="../.."
alias -g ....="../../.."
alias -g .....="../../../.."
alias -g C="| wc -l"
alias -g H="| head"
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S="| sort"
alias -g G="| grep"

source $ZSH/oh-my-zsh.sh
