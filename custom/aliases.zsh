alias c='cd'
alias h='cd ~'
alias o='cd ~-'
alias p='cd ..'
alias pp='cd ../..'
alias ppp='cd ../../..'

alias md='take'

alias a='sack'
alias e='ranger'
alias j='jobs'
alias t='tree -C'
alias s='subl3'
alias v='vim'
alias x='cdiff'
alias xs='cdiff -s'

alias as='android-studio'
alias ws='webstorm'

alias ea='vim ~/.config/awesome/rc.lua'
alias et='vim ~/.config/termite/config'
alias ez='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias ezf='vim ~/.oh-my-zsh/custom/functions.zsh'
alias ezz='vim ~/.zshrc'
alias sz='source ~/.oh-my-zsh/custom/aliases.zsh'
alias szz='source ~/.zshrc'

alias st='xdg-open'

alias lsn="ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"

alias gradlew='./gradlew'
alias gw='./gradlew'
alias gwc='./gradlew clean'
alias gwb='./gradlew build'
alias gwl='./gradlew lint'
alias gwt='./gradlew tasks'
alias gwv='./gradlew --version'
alias gwcb='./gradlew clean build'

alias fl='fastlane_wrapper'
alias fla='fl actions'
alias flv='fl --version'

alias pc='pidcat'

# node
alias ns='npm start'
alias nt='npm test'

# eb app shortcuts
alias eblive="sed -i 's/eb-ps-sandbox-app/eb-ps-live-web/g' .elasticbeanstalk/config.yml"
alias ebsand="sed -i 's/eb-ps-live-web/eb-ps-sandbox-app/g' .elasticbeanstalk/config.yml"

# git
alias git=hub
alias gs='git status -sb'
alias gsi='git status -sb --ignored'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --summary --stat'
alias gdcs='git diff --summary --stat --cached'
alias gdchk='git diff --check 4b825dc642cb6eb9a060e54bf8d69288fbee4904'
alias gcan='git commit --amend --no-edit'
alias gcic='git commit -m"Initial commit"'
alias gce='git commit --allow-empty -m"[empty commit `date +%s | tail -c 5`]"'
alias gf='git fetch'
alias gfa='gf --all --prune'
alias gbr='git branch -vv'
alias gfo='git fork && git remote rename friederbluemle fb'
alias gg='git grep -I -n --heading --break'
alias gm='git merge --ff-only'
alias gst='git -c commit.gpgsign=false stash'
alias gstrq='git stash && GIT_SEQUENCE_EDITOR=: git rebase --autosquash -i origin/master && git stash pop'
alias grq='GIT_SEQUENCE_EDITOR=: git rebase --autosquash -i origin/master'
alias grc='git rebase --continue'
alias grm='git rebase master'
alias grim='git rebase -i master'
alias gpf='git push fb'
alias gpff='git push -f fb'
alias gpr='git pull-request'
alias grh1='git reset --hard HEAD~1'
alias grh2='git reset --hard HEAD~2'
alias grh3='git reset --hard HEAD~3'
alias grh4='git reset --hard HEAD~4'
alias grht='git reset --hard `git rev-parse --abbrev-ref --symbolic-full-name @{u}`'
alias gsp='git stash pop'
alias gcm='git checkout master'
alias gcd='git checkout'
alias gco='git checkout -'
alias gl='git log'
alias gll='git log --format=fuller'
alias gl1='gll -1 --show-signature --parents'
alias gs1='git show HEAD'
alias gs2='git show HEAD~1'
alias gs3='git show HEAD~2'
alias gs4='git show HEAD~3'
alias gcp='git cherry-pick'
alias gr='git log --graph --full-history --color --date=short --pretty=format:"%x1b[31m%h%x09%x1b[30;1m%ad%x1b[0m%x1b[32m%d%x1b[0m%x20%s%x20%x1b[34;1m[%aE]"'
alias gr1='gr -10'
alias gra='gr --all'
alias grt='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
#alias gh="git remote -v | grep --color=never origin | head -n 1 | grep --color=never -o 'github.*' | sed 's/.git\ .*//' | sed 's/\:/\//' | sed 's/^/https:\/\//' | xargs open"
alias gh='git browse'

alias ackandsdk="ack -i 'com\.android\.tools\.build|buildtools|build\-tools|compilesdk|targetsdk|target=|android-'"
alias aackandsdk="a -i 'com\.android\.tools\.build|buildtools|build\-tools|compilesdk|targetsdk|target=|android-'"
alias cpsshpub="xclip -sel clip < ~/.ssh/id_rsa.pub"
alias aa="a -1 '<<<' && F 1"
alias alint="android-lint-summary -g '**/lint-result*.xml' | less -FRSX"
alias olint="find . -iname 'lint-*.html' -print0 | xargs -0 open"
