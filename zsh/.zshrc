export ZSH=$HOME/.oh-my-zsh

# set editor
export VISUAL="mate -w"

# set custom theme
export ZSH_THEME="defv"

# load plugins
plugins=(cap gem git osx rails3 ruby brew)

# source
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_aliases

# set path
export PATH=~/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/usr/local/bin:/usr/local/mysql/bin