alias c='cd'
alias h='cd ~'
alias o='cd ~-'
alias p='cd ..'
alias pp='cd ../..'
alias ppp='cd ../../..'

alias md='take'

alias a='sack'
alias b='bat'
alias e='ranger'
alias v='vim'
alias x='git diff --no-index --'

alias t='gtree -C --dirsfirst'
alias t1='t -L 2'
alias t2='t -L 3'

alias as='studio'
alias vs='code'
alias ws='webstorm'
alias opa='studio android && xed ios'

alias ea='vim ~/.config/alacritty/alacritty.yml'
alias ei='vim ~/.config/i3/config'
alias eib='vim ~/.i3blocks.conf'
alias es='vim ~/.config/skhd/skhdrc'
alias et='vim ~/.config/termite/config'
alias ev='vim ~/.vimrc'
alias ey='vim ~/.config/yabai/yabairc'
alias ez='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias ezf='vim ~/.oh-my-zsh/custom/functions.zsh'
alias ezz='vim ~/.zshrc'
alias sz='source ~/.oh-my-zsh/custom/aliases.zsh'
alias szz='source ~/.zshrc'

[ -x "$(command -v xdg-open)" ] && ! [ -x "$(command -v open)" ] && alias open='xdg-open'
alias st='open'

alias lsn="ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"

alias dl='cd ~/downloads'
alias dll='ls -tr1 ~/downloads | tail'
alias dlll='ls -ltr ~/downloads | tail'

alias te='trans :en'
alias tg='trans :de'
alias tj='trans :ja'

alias gw='./gradlew'
alias gwc='./gradlew clean'
alias gwb='./gradlew build'
alias gwl='./gradlew lint'
alias gwt='./gradlew tasks'
alias gwv='./gradlew --version'
alias gwcb='./gradlew clean build'
alias gwkc='./gradlew ktlintCheck'
alias gwkf='./gradlew ktlintFormat'

alias fl='fastlane_wrapper'
alias fla='fl actions'
alias flv='fl --version'

alias initreadme='[ ! -f "README.md" ] && echo "# $(basename $(pwd))" > README.md || echo "README.md already exists"'
alias initignore='[ ! -f ".gitignore" ] && echo "*.iml\n.DS_Store\n.idea/" > .gitignore || echo ".gitignore already exists"'

alias com='cost-of-modules'
alias ds='dust'
alias lk='logkitty'
alias loc='tokei'
alias mdl='markdownlint'
alias of='onefetch'
alias pc='pidcat'
alias sc='shellcheck'

alias ya='yarn android'
alias yb='yarn build'
alias yf='yarn format'
alias yi='yarn ios'
alias yl='yarn lint'
alias yr='yarn run'
alias ys='yarn start'
alias yt='yarn test'

alias rn='react-native'
alias rna='react-native run-android'
alias rnad='react-native run-android --appIdSuffix="debug"'
alias rni='react-native run-ios'
alias rnid='react-native run-ios --device'
alias rnn='react-native info'
alias rns='react-native start'
alias rnss='react-native start --reset-cache'
alias rnla='react-native log-android'
alias rnli='react-native log-ios'
alias rnup='react-native upgrade'

alias erns='ern start'
alias erna='ern run-android'
alias erni='ern run-ios'

alias jl='jira ls'
alias jv='jira view'

alias bb='bat settings.gradle build.gradle'
alias bba='bat app/build.gradle'
alias bp='bat package.json'
alias br='find . -type f -iname "readme*" | xargs bat'
alias vb='$EDITOR build.gradle'
alias vp='$EDITOR package.json'

# git
alias gs='git status -sb'
alias gsi='git status -sb --ignored'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --summary --stat'
alias gdse='git diff --summary --stat | fpp'
alias gdcs='git diff --summary --stat --cached'
alias gdcse='git diff --summary --stat --cached | fpp'
alias gdchk='git diff --check 4b825dc642cb6eb9a060e54bf8d69288fbee4904'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gcic='git commit -m"Initial commit"'
alias gcwip='git commit -m"wip"'
alias gcir='git init && git add . && gcic'
alias gce='git commit --allow-empty -m"[commit `date +%s | tail -c 5`]"'
alias gf='git fetch'
alias gfa='gf --all --prune'
alias gbr='git symbolic-ref --short HEAD'
alias gsd='git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"'
alias gb='git branch -vv'
alias gb1='git branch -vv --sort=-committerdate'
alias gba='git branch -avv'
alias gbb='gb && num="`git branch | wc -l`" && echo "Total: $num"'
alias ggp='git grep -I -n --heading --break'
alias gm='git merge --ff-only'
alias gst='git -c commit.gpgsign=false stash'
alias gsp='git stash pop'
alias grc='git rebase --continue'
alias grr='git rebase -i --root'
alias gcr='cd $(git rev-parse --show-cdup)'
alias grim='git rebase -i `gsd`'
alias grscp='git rebase --show-current-patch'
alias grq='GIT_SEQUENCE_EDITOR=: git rebase --autosquash -i origin/`gsd`'
alias gstrq='gst && grq && gsp'
alias gp='git push'
alias gpf='git push fb'
alias gpff='git push -f fb'
alias gfb='branch="`gbr 2>/dev/null`" && gcm && gfa && gm && gpf && gb -d $branch'
alias gci='hub ci-status'
alias gcl='github_clone'
alias gfo='hub fork --remote-name fb'
alias gpr='hub pull-request'
alias prl='hub pr list -f "%sC%>(8)%i%Creset  %U  %H  %t%  l%n"'
alias prc='hub pr checkout'
alias prm='hub pr merge'
alias grh1='git reset --hard HEAD~1'
alias grh2='git reset --hard HEAD~2'
alias grh3='git reset --hard HEAD~3'
alias grh4='git reset --hard HEAD~4'
alias grho='git reset --hard ORIG_HEAD'
alias grht='git reset --hard `git rev-parse --abbrev-ref --symbolic-full-name @{u}`'
alias gg='git checkout'
alias gcm='git checkout `gsd`'
alias gco='git checkout -'
alias gcup='git checkout -b update-project'
alias gcgw='git checkout -b update-gradle-wrapper'
alias gl='git log'
alias gll='git log --format=fuller'
alias glll='gll --show-signature --parents'
alias gl1='glll -1'
alias gl2='glll -2'
alias gl3='glll -3'
alias gl4='glll -4'
alias gs1='git show HEAD'
alias gs2='git show HEAD~1'
alias gs3='git show HEAD~2'
alias gs4='git show HEAD~3'
alias gcp='git cherry-pick'
alias gr='git log --graph --full-history --color --date=short --pretty=format:"%x1b[31m%h%x09%x1b[30;1m%ad%x1b[0m%x1b[32m%d%x1b[0m%x20%s%x20%x1b[34;1m[%aE]"'
alias gr1='gr -10'
alias gra='gr --all'
alias gras='gra --simplify-by-decoration'
alias grt='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias gbp='git big-picture'
if [ -x "$(command -v hub)" ]; then
    alias hb='hub browse'
else
    alias hb="git remote get-url origin | sed 's/\.git$//' | sed 's#:#/#' | sed 's#https/#https:#' | sed 's#git@#https://#' | xargs open"
fi
alias ghl='git_list_repos'
alias ghlu='git_list_repos users'

alias ackandsdk="ack -i 'com\.android\.tools\.build|buildtools|build\-tools|compilesdk|targetsdk|target=|android-'"
alias aackandsdk="a -i 'com\.android\.tools\.build|buildtools|build\-tools|compilesdk|targetsdk|target=|android-'"
alias cpsshpub="xclip -sel clip < ~/.ssh/id_rsa.pub"
alias aa="a -1 '<<<<<<<' && F 1"
alias alint="android-lint-summary -g '**/lint-result*.xml' | less -FRSX"
alias olint="find . -iname 'lint-*.html' -print0 | xargs -0 open"
alias fixws="cp ~/github/friederbluemle/misc/.pre-commit-config.yaml . && pre-commit run --all-files && rm .pre-commit-config.yaml"
alias fixpj="cp ~/github/friederbluemle/misc/.fixpackrc . && fixpack && rm .fixpackrc"
alias killhusky="cd .git/hooks/ && rm -f applypatch-msg commit-msg post-applypatch post-checkout post-commit post-merge post-receive post-rewrite post-update pre-applypatch pre-auto-gc pre-commit pre-merge-commit pre-push pre-rebase pre-receive prepare-commit-msg push-to-checkout sendemail-validate update && cd ../.."
alias clf="git ls-files '*.m' '*.h' | xargs clang-format -i -style='{IndentWidth: 4, ColumnLimit: 999}'"
alias clf2="git ls-files '*.m' '*.h' | xargs clang-format -i -style='{IndentWidth: 2, ColumnLimit: 999}'"
