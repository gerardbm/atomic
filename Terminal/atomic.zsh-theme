#

#Atomic theme for Oh My Zsh
## March 2016 by Gerard Bajona

# Separator
setopt promptsubst
ATOMIC_SEPARATOR=$'${(r:$COLUMNS::-:)}';

# Hostname
function hostname {
    echo $HOST
}

# Current directory
local current_dir='${PWD/#$HOME/~}'

# Git prefix
ATOMIC_GIT_PREFIX_01="%{"$'\e[94m'"%}~ on%{$reset_color%} "
ATOMIC_GIT_PREFIX_02="%{$fg_bold[blue]%}git%{$reset_color%}"
ATOMIC_GIT_PREFIX_03=":%{$fg[blue]%}"

# Git information
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${ATOMIC_GIT_PREFIX_01}${ATOMIC_GIT_PREFIX_02}${ATOMIC_GIT_PREFIX_03}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}●"

# Prompt format
PROMPT="%{"$'\e[90m'"%}$ATOMIC_SEPARATOR\
%{$fg[cyan]%}%n \
%{$fg[white]%}at \
%{$fg[green]%}$(hostname) \
%{$fg[white]%}in \
%{$fg_bold[yellow]%}${current_dir}%{$reset_color%} \
%{"$'\e[90m'"%}[⌚ %T]
${git_info}\
%{$fg[white]%}» %{$reset_color%}"