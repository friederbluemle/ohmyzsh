alias c='cd'
alias h='cd ~'
alias o='cd ~-'
alias p='cd ..'
alias pp='cd ../..'
alias ppp='cd ../../..'

alias md='take'

alias a='sack'
alias f='wd'
alias g='google'
alias j='jobs'
alias n='mousepad'
alias t='tree'
alias s='subl'
alias v='vim'
alias x='cdiff'
alias xs='cdiff -s'

alias as='android-studio'
alias asb='android-studio build.gradle'

alias ez='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias sz='source ~/.oh-my-zsh/custom/aliases.zsh'
alias szz='source ~/.zshrc'

alias st='gnome-open'

alias gradlew='./gradlew'
alias gw='./gradlew'
alias gwc='./gradlew clean'
alias gwb='./gradlew build'
alias gwt='./gradlew tasks'
alias gwv='./gradlew --version'
alias gwcb='./gradlew clean build'

# git
alias gs='git status -sb'
alias gsi='git status -sb --ignored'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --summary --stat'
alias gdcs='git diff --summary --stat --cached'
alias gdchk='git diff --check 4b825dc642cb6eb9a060e54bf8d69288fbee4904'
alias gcan='git commit --amend --no-edit'
alias gf='git fetch'
alias gg='git grep -I -n --heading --break'
alias gm='git merge --ff-only'
alias gst='git stash'
alias gsp='git stash pop'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gl='git log'
alias gll='git log --format=fuller'
alias gcl='git clone'
alias gcp='git cherry-pick'
alias gr='git log --graph --full-history --color --date=short --pretty=format:"%x1b[31m%h%x09%x1b[30;1m%ad%x1b[0m%x1b[32m%d%x1b[0m%x20%s%x20%x1b[34;1m[%aE]"'
alias gra='gr --all'
alias grt='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias gh="git remote -v | grep --color=never origin | head -n 1 | grep --color=never -o 'github.*' | sed 's/.git\ .*//' | sed 's/\:/\//' | sed 's/^/https:\/\//' | xargs google-chrome"

alias ackandsdk="ack -i 'com\.android\.tools\.build|buildtools|build\-tools|compilesdk|targetsdk|target=|android-'"

# p2p
alias upp='adb uninstall com.paypal.android.p2pmobile'
alias cpp='adb shell pm clear com.paypal.android.p2pmobile'
alias tpp='adb shell am instrument -w -r com.paypal.android.p2pmobile.test/cucumber.api.android.CucumberInstrumentation'

alias p2p='~/ppgithub/android/p2pmobile/etc/tools/p2p.sh'
