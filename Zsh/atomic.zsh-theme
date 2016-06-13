# Atomic theme for Oh My Zsh
# April 2016, by Gerard Bajona
# URL: https://github.com/gerardbm/Atomic

# Separator
setopt promptsubst
TIME=$(date +%H:%M)
DARK_GREY=$'%{\e[90m%}';
ATOMIC_SEPARATOR=$'$DARK_GREY${(r:(($COLUMNS - 7))::-:)}[%{$fg[white]%}$TIME$DARK_GREY]';

# Hostname
function hostname {
    echo $HOST
}

# Current directory
local current_dir='${PWD/#$HOME/~}'

# Git prefix
ATOMIC_GIT_PREFIX_01="%{$fg[default]%}~ on "
ATOMIC_GIT_PREFIX_02="%{$fg[cyan]%}git%{$reset_color%}"
ATOMIC_GIT_PREFIX_03=":%{$fg_bold[cyan]%}"

# Git information
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${ATOMIC_GIT_PREFIX_01}${ATOMIC_GIT_PREFIX_02}${ATOMIC_GIT_PREFIX_03}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%} %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%} %{$fg[green]%}o"

# Prompt format
PROMPT="$ATOMIC_SEPARATOR\
%{$fg[green]%}%n \
%{$fg[default]%}at \
%{$fg[blue]%}$(hostname) \
%{$fg[default]%}in \
%{$fg_bold[blue]%}${current_dir}%{$reset_color%}
${git_info}\
%{$fg[default]%}» %{$reset_color%}"
