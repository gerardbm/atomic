# Atomic theme for Oh My Zsh
# April 2016, by Gerard Bajona

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
ATOMIC_GIT_PREFIX_01="%{$fg[white]%}~ on "
ATOMIC_GIT_PREFIX_02="%{$fg[yellow]%}git%{$reset_color%}"
ATOMIC_GIT_PREFIX_03=":%{$fg_bold[yellow]%}"

# Git information
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${ATOMIC_GIT_PREFIX_01}${ATOMIC_GIT_PREFIX_02}${ATOMIC_GIT_PREFIX_03}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%} %{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%} %{$fg[green]%}●"

# Prompt format
PROMPT="%{"$'\e[90m'"%}$ATOMIC_SEPARATOR\
%{$fg[blue]%}%n \
%{$fg[white]%}at \
%{$fg[cyan]%}$(hostname) \
%{$fg[white]%}in \
%{$fg_bold[cyan]%}${current_dir}%{$reset_color%} \
%{"$'\e[90m'"%}[⌚ %T]
${git_info}\
%{$fg[white]%}» %{$reset_color%}"
