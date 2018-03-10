DOTFILES=~/.dotfiles
if [ -d "$DOTFILES" ]; then
  # If not running interactively, don't do anything
  [[ $- != *i* ]] && return

  # Where the magic happens.
  export DOTFILES

  # Add binaries into the path
  export PATH=$DOTFILES/bin:$PATH

  # Source all files in "source"
  function src() {
    local file
    if [[ "$1" ]]; then
      source "$DOTFILES/source/$1.sh"
    else
      for file in $DOTFILES/source/*; do
        source "$file"
      done
    fi
  }

  # Run dotfiles script, then source.
  function dotfiles() {
    $DOTFILES/bin/dotfiles "$@" && src
  }

  src
fi
