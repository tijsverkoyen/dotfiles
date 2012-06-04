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
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi