# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
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
    dirs -v | head -10
  fi
}
compdef _dirs d

# List directory contents
if [ -x "$(command -v exa)" ]; then
  if [ "$USER" = "f0b00n7" ]; then
    function l() {
      exa -gl --sort=Name --group-directories-first --git --color=always "$@" | sed -- "s/$USER/fb/"
    }
  else
    alias l='exa -gl --sort=Name --group-directories-first --git --color=always'
  fi
  alias ll='exa -agl --sort=Name --group-directories-first --git --color=always'
  alias la='exa -agl@ --sort=Name --group-directories-first --git --color=always'
  alias lll='exa -aBgl@ --sort=Name --group-directories-first --git --color=always'
  alias t='exa -lT --sort=Name --group-directories-first --git-ignore --color=always'
  alias tt='exa -alT --sort=Name --group-directories-first --git-ignore --ignore-glob=.git --color=always'
  alias ttt='exa -aBlT --sort=Name --group-directories-first --git-ignore --ignore-glob=.git --color=always'
  alias t2='exa -lT --sort=Name --group-directories-first --git-ignore --color=always --level=2'
  alias t3='exa -lT --sort=Name --group-directories-first --git-ignore --color=always --level=3'
elif [ -x "$(command -v gls)" ]; then
  alias l='gls -lh --group-directories-first --color=always'
  alias ll='gls -lAh --group-directories-first --color=always'
  alias lll='gls -lA --group-directories-first --color=always'
else
  alias l='ls -lh --group-directories-first'
  alias ll='ls -lAh --group-directories-first'
  alias lll='ls -lA --group-directories-first'
fi
