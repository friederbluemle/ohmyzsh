# Make dir and cd into it
#md() { mkdir -p "$@" && cd "$@"; }

# Update Gradle wrapper
ugw() {
    echo "task w(type:Wrapper){gradleVersion='$*'}" > build.gradle
    rm -f settings.gradle
    gradle w
    git checkout build.gradle
    git checkout settings.gradle
    sed -i "s/-bin\.zip/-all\.zip/g" gradle/wrapper/gradle-wrapper.properties
    git add gradle
    git commit -m"Update Gradle wrapper to $*"
}

replacelines() {
  ack "$1" -la --print0 | xargs -0 -n 1 sed -i "s/$1/$2/";
}

deletelines() {
  ack "$1" -la --print0 | xargs -0 -n 1 sed -i "/$1/d";
}

git_branch_color() {
  if [[ "$(command git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    local SUBMODULE_SYNTAX=''
    local GIT_STATUS=''
    if [[ $POST_1_7_2_GIT -gt 0 ]]; then
          SUBMODULE_SYNTAX="--ignore-submodules=dirty"
    fi
    if [[ "$DISABLE_UNTRACKED_FILES_DIRTY" == "true" ]]; then
        GIT_STATUS=$(command git status -s ${SUBMODULE_SYNTAX} -uno 2> /dev/null | tail -n1)
    else
        GIT_STATUS=$(command git status -s ${SUBMODULE_SYNTAX} 2> /dev/null | tail -n1)
    fi
    if [[ -n $GIT_STATUS ]]; then
      echo "%{$fg[red]%}"
    else
      echo "%{$fg[green]%}"
    fi
  else
    echo "%{$fg[green]%}"
  fi
}

git_branch_info() {
  #git rev-parse --git-dir >/dev/null 2>&1
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ $? -eq 0 ]; then
    echo -ne "%{$reset_color%}:"
    git_status=$(command git status --untracked-files=no --ignore-submodules=dirty --porcelain 2>/dev/null)
    if [ $? -eq 128 ]; then
      echo -ne "%{$fg[magenta]%}GIT_DIR!"
    else
      #branch=$(command git describe --all --always 2>/dev/null | sed "s/.*\///")
      if [ -z $git_status ]; then
        echo -ne "%{$fg[green]%}${branch}"
      else
        echo -ne "%{$fg[red]%}${branch}"
      fi
      git config --get branch.$branch.remote >/dev/null 2>&1
      if [ $? -eq 0 ]; then
        diverged=$(command git log @{u}... --oneline | wc -l)
        if [ $diverged -ne 0 ]; then
          echo -ne "%{$fg_bold[yellow]%}"
          ahead=$(command git log @{u}.. --oneline | wc -l)
          if [ $ahead -eq $diverged ]; then
            echo -ne "↑ $ahead"
          else
            behind=$(command git log ..@{u} --oneline | wc -l)
            if [ $behind -eq $diverged ]; then
              echo -ne "↓ $behind"
            else
              echo -ne "↕ ↑ $ahead↓ $behind"
            fi
          fi
        fi
      fi
    fi
  else
    return 0
  fi
}
