# Customized version of Bira theme
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m%{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$fg[gray]%}%n@%m%{$reset_color%}'
    local user_symbol='$'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="╭─ ${user_host} ${current_dir} ${git_branch}
╰─%B ▶%${user_symbol}%b "
RPS1="%B${return_code}%b"
RPROMPT="[$(date "+%H:%M:%S")]"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$terminfo[bold]$FG[006]- git@%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$terminfo[bold]$FG[001]%}*"
