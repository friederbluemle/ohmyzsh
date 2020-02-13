# Changing/making/removing directory
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus


alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

#alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d

# List directory contents
if (( $+commands[eza] )); then
  # Optional user-mask file holds a substitution (e.g. 's/longuser/fb/')
  # applied to l output, for machines with an imposed user name
  if [[ -r ${XDG_CONFIG_HOME:-$HOME/.config}/user-mask ]]; then
    _user_mask=$(<${XDG_CONFIG_HOME:-$HOME/.config}/user-mask)
    function l() {
      eza -l --sort=Name --group-directories-first --git --color=always "$@" | sed "$_user_mask"
    }
  else
    alias l='eza -l --sort=Name --group-directories-first --git --color=always'
  fi
  alias ll='eza -agl --sort=Name --group-directories-first --git --color=always'
  alias la='eza -agl@ --sort=Name --group-directories-first --git --color=always'
  alias lll='eza -aBgl@ --sort=Name --group-directories-first --git --color=always'
  alias t='eza -lT --sort=Name --group-directories-first --git-ignore --color=always'
  alias tt='eza -alT --sort=Name --group-directories-first --git-ignore --ignore-glob=.git --color=always'
  alias ttt='eza -aBlT --sort=Name --group-directories-first --git-ignore --ignore-glob=.git --color=always'
  alias t1='eza -lT --sort=Name --group-directories-first --git-ignore --color=always --level=1'
  alias t2='eza -lT --sort=Name --group-directories-first --git-ignore --color=always --level=2'
  alias t3='eza -lT --sort=Name --group-directories-first --git-ignore --color=always --level=3'
else
  # GNU ls: gls from coreutils, or ls itself when it supports grouping
  _ls=
  if (( $+commands[gls] )); then
    _ls=gls
  elif command ls --group-directories-first -d / >/dev/null 2>&1; then
    _ls=ls
  fi
  if [[ -n $_ls ]]; then
    alias l="$_ls -lh --group-directories-first --color=always"
    alias ll="$_ls -lAh --group-directories-first --color=always"
    alias lll="$_ls -lA --group-directories-first --color=always"
  else
    alias l='ls -lh'
    alias ll='ls -lAh'
    alias lll='ls -lA'
  fi
  unset _ls
fi
