ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo "%{$fg_bold[green]%}➜ %{$reset_color%}" ; fi
}

function custom_git_prompt_info() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [[ -n $branch ]]; then
        local dirty_count=$(git diff --name-only | wc -l | tr -d ' ')
        local untracked_count=$(git status --porcelain | grep '^??' | wc -l | tr -d ' ')
        local added_count=$(git diff --cached --name-only | wc -l | tr -d ' ')

        local dirty=""
        if [[ $dirty_count -gt 0 ]]; then
            dirty=" %{$fg[red]%}!$dirty_count%{$reset_color%}"
        fi
        local untracked=""
        if [[ $untracked_count -gt 0 ]]; then
            untracked=" %{$fg[yellow]%}?$untracked_count%{$reset_color%}"
        fi
        local added=""
        if [[ $added_count -gt 0 ]]; then
            added=" %{$fg[green]%}+${added_count}%{$reset_color%}"
        fi

        echo " on %{$fg[green]%}$branch%{$reset_color%}$dirty$untracked$added"
    fi
}

PROMPT='
%{$fg_bold[magenta]%}%n%{$reset_color%}@%{$fg_bold[yellow]%}%m%{$reset_color%} in %{$fg_bold[blue]%}%~%{$reset_color%}$(custom_git_prompt_info) $(virtualenv_prompt_info)
$(prompt_char)'

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'

ZSH_THEME_VIRTUALENV_PREFIX="%{$fg_bold[yellow]%}● "
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%}"
