# vim:ft=zsh
# -----------------------------------------------------------------------------
#           __                  _
#    ____ _/ /_____  ____ ___  (_)____
#   / __ `/ __/ __ \/ __ `__ \/ / ___/
#  / /_/ / /_/ /_/ / / / / / / / /__
#  \__,_/\__/\____/_/ /_/ /_/_/\___/ series
#
# -----------------------------------------------------------------------------
#  Theme   : atomic-lambda
#  Version : 1.1.0
#  License : MIT
#  Author  : Gerard Bajona
#  URL     : https://github.com/gerardbm/atomic
# -----------------------------------------------------------------------------

# Status lambda
function status_lambda() {
	echo "%(?:%{$fg[cyan]%}λ:%{$fg[red]%}λ%s)"
}

# PWD
function get_pwd() {
	echo "${PWD/$HOME/~}"
}

# Git information
function atomic_git() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	GIT_STATUS=$(git_prompt_status)
	PREFIX=$ZSH_THEME_GIT_PROMPT_PREFIX
	SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX
	HEADS="${ref#refs/heads/}%{$reset_color%}"
	DIRTY=$ZSH_THEME_GIT_PROMPT_DIRTY
	CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN
	if [[ -n $GIT_STATUS ]] && GIT_STATUS="$GIT_STATUS"; then
		echo "$PREFIX$HEADS $DIRTY : $GIT_STATUS$SUFFIX "
	else
		echo "$PREFIX$HEADS $CLEAN$SUFFIX "
	fi
}

# Git prompt: info
GIT_PREFIX="%{$fg[cyan]%}git%{$reset_color%}:%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_PREFIX="${GIT_PREFIX}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Git prompt: dirty/clean
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}x%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}o%{$reset_color%}"

# Git prompt: status
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[green]%}>%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}#%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[magenta]%}?%{$reset_color%}"

# Git prompt: remote status
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[blue]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[blue]%}/%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="%{$fg[blue]%}=%{$reset_color%}"

# Git right prompt
# function atomic_rprompt() {
#   SHORT_SHA=$(git_prompt_short_sha)
#   if [[ -n $SHORT_SHA ]] && SHORT_SHA="$SHORT_SHA"; then
#     echo "%{$fg[cyan]%}[$SHORT_SHA]"
#   fi
# }

# Arrow
function atomic_arrow() {
	AA1="%{$FG[007]%}>"
	AA2="%{$FG[006]%}>"
	AA3="%{$FG[014]%}>"
	echo "$AA1$AA2$AA3%{$reset_color%}"
}

# Prompt
PROMPT='
$(status_lambda) \
%{$fg_bold[yellow]%}$(get_pwd)%{$reset_color%} \
$(atomic_git)$(atomic_arrow) %{$reset_color%}'

# RPROMPT='$(atomic_rprompt)%{$reset_color%}'
