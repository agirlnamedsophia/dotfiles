# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/sophiarussell/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="crcandy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=( git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws history ruby bundler)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# aliases
alias zshconfig="source ~/.zshrc"
alias core="cd ~/src/better-core"
alias r="cd ~/src/better-core/retail"
alias rc="cd ~/src/better-core/retail_core"
alias restart-nginx="sudo nginx -s quit && sudo nginx"
alias istanbul="cd ~/src/istanbul && ./run-local.sh"
alias cst="cd ~/src/better-core/cst"
alias cst-start="cst && foreman start web"
alias bd="cd ~/src/better-core/broker_dealer"
alias bdc="cd ~/src/better-core/broker_dealer_core"
alias blurbs="cd ~/src/blurbs"
alias nginx="cd /opt/boxen/config/nginx"
alias cdbox="cd /opt/boxen/repo"
alias resetboxen="cd /opt/boxen/repo && git reset --hard origin/master && boxen"
alias gdb="git delete-branch"
alias gcp="git cherry-pick"
alias zc="rails console"
alias zmig="rake db:migrate"
alias b4b="cd ~/src/for_business/b4b"
alias engops="cd ~/src/eng-ops"
alias tt="cd ~/src/test_track"
alias rrsubl="cd ~/src/better-core && subl retail retail_core"
alias nanda="cd ~/src/nanda"
alias climber="cd ~/www/Climber"
alias rondo="cd ~/src/coach/rondo"
alias coach="cd ~/src/coach/coach"
alias blog="cd ~/www/bettermentblogposts"
alias woodshed="cd ~/src/woodshed"

alias tcstart="$CATALINASH start"
alias tcrun="$CATALINASH run"
alias tcstop="$CATALINASH stop"
alias tcdebug="$CATALINASH jpda run"
alias tclog="tail -f $TOMCAT_BASE/logs/catalina.out"

alias clean-build="gradle clean ruby web-api:war"
alias clean-debug="clean-build && tcdebug"
alias clean-start="clean-build && tcrun"

alias myrondo="BUNDLE_GEMFILE=$HOME/src/coach/rondo/Gemfile bundle exec rondo"

alias prod-encrypt="pbpaste | ansible-vault encrypt_string --vault-password-file=~/ansible-vault/production.key"
alias prod-decrypt="pbpaste | sed 's/^[[:space:]]*//g' | ansible-vault decrypt --vault-password-file=~/ansible-vault/production.key /dev/stdin --output=-"
alias dev-encrypt="pbpaste | ansible-vault encrypt_string --vault-password-file=~/ansible-vault/development.key"
alias dev-decrypt="pbpaste | sed 's/^[[:space:]]*//g' | ansible-vault decrypt --vault-password-file=~/ansible-vault/development.key /dev/stdin --output=-"

alias fizz="cd $HOME/www/fizzbuzzsophia"

# give the VM a semi-ridiculous amount of memory.
#LOTS_O_MEM='-Xms1g -Xmx1g -XX:+HeapDumpOnOutOfMemoryError'
#GC_PERMGEN='-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC'

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

find_replace () {
  dir=$1
  find_this=$2
  replace_with_this=$3
  rg -l $find_this $dir | xargs -n1 sed -i '' s/$find_this/$replace_with_this/g
}

ssh_to_instance () {
  bssh "$(aws ec2 describe-instances --instance-id "$1" | jq -r '.Reservations[0].Instances[0].PrivateIpAddress')"
}

source "$HOME/.bootstrap/env.sh"

eval "$(direnv hook zsh)"

GOPATH=~/go
#export JAVA_OPTS="$LOTS_O_MEM $GC_PERMGEN"
#export GRADLE_OPTS="$LOTS_O_MEM $GC_PERMGEN"
#export ANT_OPTS="$LOTS_O_MEM $GC_PERMGEN"
export TOMCAT_BASE="~/my/toolbox/tomcat-6.0.18"
export CATALINASH="$TOMCAT_BASE/bin/catalina.sh"
export GOPATH=${HOME}/go
export AWS_DEFAULT_REGION=us-east-1
export LUIGI_CONFIG_PATH=~/luigi.cfg
export PATH=/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
