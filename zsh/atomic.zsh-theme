#----------------------------------------------------------------
#   _____    _
#  |__  /___| |__
#    / // __| '_ \
#   / /_\__ \ | | |
#  /____|___/_| |_|
#
#----------------------------------------------------------------
#  Theme   : Atomic
#  Version : 1.0.2
#  License : MIT
#  Author  : Gerard Bajona
#  URL     : https://github.com/gerardbm/atomic
#----------------------------------------------------------------

# Top separator
setopt promptsubst
ATOMIC_DG=$'%{\e[90m%}'
ATOMIC_LN=$'${(r:(($COLUMNS - 9))::—:)}'
ATOMIC_SL="%{$fg[white]%}/"
ATOMIC_TM="%{$fg[default]%}%D{ %R }"
ATOMIC_TOP="${ATOMIC_DG}${ATOMIC_LN}${ATOMIC_SL}${ATOMIC_TM}${ATOMIC_SL}"

# Hostname
function hostname {
	echo $HOST
}

# Current directory
local current_dir='${PWD/#$HOME/~}'

# Git prefix
ATOMIC_GIT1="\n%{$fg[default]%}~ on "
ATOMIC_GIT2="%{$fg[cyan]%}git%{$reset_color%}"
ATOMIC_GIT3=":%{$fg_bold[cyan]%}"

# Git information
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${ATOMIC_GIT1}${ATOMIC_GIT2}${ATOMIC_GIT3}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%} %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%} %{$fg[green]%}o"

# Prompt format
PROMPT="$ATOMIC_TOP
%{$fg[green]%}%n %{$fg[default]%}at %{$fg[blue]%}$(hostname) \
%{$fg[default]%}in %{$fg_bold[blue]%}${current_dir}%{$reset_color%} \
${git_info}%{$fg[default]%}» %{$reset_color%}"
