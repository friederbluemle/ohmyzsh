local ret_status="%(?:::%{$fg_bold[white]%}%{$bg[red]%}%?%{$reset_color%}%s)"
PROMPT='%{$fg_bold[black]%}%D{%H:%M:%S} %{$fg_bold[green]%}%p%n@%m%{$reset_color%}:%{$fg_bold[blue]%}%~$(git_branch_info)$(ssh_status)%{$reset_color%}${ret_status}%# '

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:$(git_branch_color)"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}$(git_prompt_status) %{$fg[yellow]%}✗%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

#ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg[green]%}✚%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg[blue]%}✹%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg[red]%}✖%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg[magenta]%}➼%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg[yellow]%}═%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[cyan]%}✭%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_AHEAD=" %{$fg[red]%}!%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="⟶%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="⟵%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="⇄%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg_bold[white]%}]%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_NOCACHE=1
