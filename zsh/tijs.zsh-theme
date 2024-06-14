PROMPT='$(prompt_status)$(prompt_context):$(prompt_current_path)$(prompt_git_status) → '

# Show the status off the previous command
# If the previous command has failed a red cross will be shown otherwise a green tick will be visible.
prompt_status() {
  PREVIOUS_EXIT_STATUS=$?
  if [[ $PREVIOUS_EXIT_STATUS -ne 0 ]]; then
    print -n "%{$fg[red]%}✘%{$reset_color%} "
  else
    print -n "%{$fg[green]%}✔%{$reset_color%} "
  fi
}

# Show hostname
prompt_context() {
  print -n "%{$fg[green]%}%m%{$reset_color%}"
}

# Show the current path
prompt_current_path() {
  print -n "%{$fg[yellow]%}%2~%{$reset_color%}"
}

# Show the current git status
# If you are in a git direct the format will be (branch <dirty><behind|ahead|diverged>)
# Where dirty will be a red ● when the branch is dirty, or a green ● when the branch is clean
# If the branch is ahead a red ↑ will be shown, when behind it wil show a red ↓
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg[red]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg[red]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg[red]%}↑↓%{$reset_color%}"
prompt_git_status() {
  local GIT_INFO=$(_omz_git_prompt_info)
  if [[ "$GIT_INFO" != "" ]]; then
    GIT_STATUS=$(git_remote_status)
    print -n "%{$fg[blue]%}($GIT_INFO%{$reset_color%}$GIT_STATUS%{$fg[blue]%})%{$reset_color%}"
  fi
}