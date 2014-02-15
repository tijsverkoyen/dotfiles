export ZSH=$HOME/.oh-my-zsh

# set editor
export VISUAL="mate -w"

# set custom theme
export ZSH_THEME="tijs"

# load plugins
plugins=(brew bundler cap coffee composer gem git knife node npm osx rails ruby symfony2 vagrant)

# source
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_aliases
source $HOME/.zsh_functions

# set path
export PATH=~/bin:/usr/local/bin:/usr/local/Cellar/php53/5.3.15/bin:/usr/local/share/npm/bin:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
