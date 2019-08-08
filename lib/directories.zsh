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
alias lsa='ls -lah'
case "$OSTYPE" in
  darwin*)  alias lsbase='gls -l --group-directories-first --color=always' ;;
  *)        alias lsbase='ls -l --group-directories-first' ;;
esac
case "$HOST" in
  fb-mbp151)
    function l() {
      lsbase -h "$@" | sed -- 's/f0b00n7/fb/'
    }
    ;;
  *)
    alias l='lsbase -h'
    ;;
esac
alias ll='lsbase -Ah'
alias lll='lsbase -A'
alias la='ls -lAh'
