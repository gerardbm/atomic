# vim:ft=zsh
# -----------------------------------------------------------------------------
#           __                  _
#    ____ _/ /_____  ____ ___  (_)____
#   / __ `/ __/ __ \/ __ `__ \/ / ___/
#  / /_/ / /_/ /_/ / / / / / / / /__
#  \__,_/\__/\____/_/ /_/ /_/_/\___/ series
#
# -----------------------------------------------------------------------------
#  Theme   : atomic-powerline
#  Version : 2.1.0
#  License : MIT
#  Author  : Gerard Bajona
#  URL     : https://github.com/gerardbm/atomic
# -----------------------------------------------------------------------------

# Status machine
function status_machine() {
	PREFIX="%{$fg[black]%}%(?:%{$bg[cyan]%}:%{$bg[yellow]%}%s)"
	LOCALE="%n@$(hostname)"
	SUFFIX="%{$bg[white]%}%(?:%{$fg[cyan]%}:%{$fg[yellow]%}%s)"
	echo "$PREFIX $LOCALE $SUFFIX"
}

# Hostname
function hostname {
	echo "$HOST"
}

# PWD
function get_pwd() {
	echo "${PWD/$HOME/~}"
}

# Git information
function atomic_git() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	GIT_STATUS=$(git_prompt_status)
	MOD_STATUS="%{$fg_bold[black]%}$GIT_STATUS"
	PREFIX=$ZSH_THEME_GIT_PROMPT_PREFIX
	SUFFIX="%{$reset_color%}%{$fg[white]$bg[default]%}"
	HEADS="${ref#refs/heads/}"
	DIRTY=$ZSH_THEME_GIT_PROMPT_DIRTY
	CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN
	if [[ -n $GIT_STATUS ]] && GIT_STATUS="$GIT_STATUS"; then
		echo "$PREFIX$HEADS $DIRTY $MOD_STATUS $SUFFIX"
	else
		echo "$PREFIX$HEADS $CLEAN"
	fi
}

# Git prompt: info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[black]$bg[white]%}  "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Git prompt: dirty/clean
ZSH_THEME_GIT_PROMPT_DIRTY="x "
ZSH_THEME_GIT_PROMPT_CLEAN="o %{$fg[white]$bg[default]%}"

# Git prompt: status
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_RENAMED=">"
ZSH_THEME_GIT_PROMPT_MODIFIED="!"
ZSH_THEME_GIT_PROMPT_DELETED="-"
ZSH_THEME_GIT_PROMPT_UNMERGED="#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"

# Git prompt: remote status
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_DIVERGED="/"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="="

# Git right prompt
# function atomic_rprompt() {
#   SHORT_SHA=$(git_prompt_short_sha)
#   if [[ -n $SHORT_SHA ]] && SHORT_SHA="$SHORT_SHA"; then
#     PREFIX="%{$fg[white]%}%{$reset_color%}"
#     RPROMPT="%{$fg[black]$bg[white]%} $SHORT_SHA "
#     echo "$PREFIX$RPROMPT"
#   fi
# }

# Prompt
PROMPT='
$(status_machine)\
%{$fg[black]$bg[white]%} $(get_pwd) \
%{$fg[white]$bg[default]%}$(atomic_git) %{$reset_color%}'

# RPROMPT='$(atomic_rprompt)%{$reset_color%}'
