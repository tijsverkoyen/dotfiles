# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:

# You should use http://color.smyck.org/

DEFAULT_USER="tijs"
PROMPT='$(prompt_status)$(prompt_context):$(prompt_current_path)$(prompt_git_status) → '

## Internal methods

# Show the status off the previous command
# If the previous command has failed a red cross will be shown otherwise a green tick will be visible.
prompt_status() {
	RETVAL=$?
  	if [[ $RETVAL -ne 0 ]]; then
		print -n "%{$fg[red]%}✘%{$reset_color%} "
	else
		print -n "%{$fg[green]%}✔%{$reset_color%} "		
	fi
}

# Show which user you are
# If you are another user it will be shown. If you are root it will show it in red, otherwise it will be green.
prompt_context() {
	local user=`whoami`
	if [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CONNECTION" ]]; then
		if [[ $UID -eq 0 ]]; then
			print -n "%{$fg[red]%}⚡$user"
		else
			print -n "%{$fg[green]%}$user"			
		fi
		
		print -n "@%{$reset_color%}"
    fi 
	
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
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[red]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[red]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[red]%}↑↓%{$reset_color%}"

prompt_git_status() {
	local GIT_INFO=$(_omz_git_prompt_info)
	if [[ "$GIT_INFO" != "" ]]; then
		GIT_STATUS=$(git_remote_status)
		print -n "%{$fg[blue]%}($GIT_INFO%{$reset_color%}$GIT_STATUS%{$fg[blue]%})%{$reset_color%}"
	fi
}
