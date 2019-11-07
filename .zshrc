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
plugins=(git aws history ruby bundler kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# aliases
alias zshconfig="source ~/.zshrc"
alias core="cd ~/src/retail"
alias retail="cd ~/src/retail && subl retail"
alias restart-nginx="sudo nginx -s quit && sudo nginx"
alias istanbul="cd ~/src/istanbul && ./run-local.sh"
alias cst="cd ~/src/retail/cst"
alias cst-start="cst && foreman start web"
alias bd="cd ~/src/retail/broker_dealer"
alias bdc="cd ~/src/retail/broker_dealer_core"
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
alias rrsubl="cd ~/src/retail && subl retail retail_core"
alias nanda="cd ~/src/nanda"
alias climber="cd ~/www/Climber"
alias pulls="open https://github.com/pulls"

#alias coach="cd ~/src/coach/coach"
alias blog="cd ~/www/bettermentblogposts"
alias woodshed="cd ~/src/woodshed"
alias shipyard="cd ~/src/shipyard"
alias fizzbuzzsophia="cd $HOME/www/fizzbuzzsophia"
alias gotosopsorific="cd ~/go/src/github.com/Betterment/sopsorific"
alias legacy-deploy="cd ~/src/legacy-deploy"

alias tcstart="$CATALINASH start"
alias tcrun="$CATALINASH run"
alias tcstop="$CATALINASH stop"
alias tcdebug="$CATALINASH jpda run"
alias tclog="tail -f $TOMCAT_BASE/logs/catalina.out"

alias clean-build="gradle clean ruby web-api:war"
alias clean-debug="clean-build && tcdebug"
alias clean-start="clean-build && tcrun"

alias myrudder="RBENV_VERSION=$(cat $HOME/src/rudder/.ruby-version) BUNDLE_GEMFILE=$HOME/src/rudder/Gemfile bundle exec $HOME/src/rudder/exe/rudder"
alias mycoach="RBENV_VERSION=$(cat $HOME/src/coach/coach_cli/.ruby-version) BUNDLE_GEMFILE=$HOME/src/coach/coach_cli/Gemfile bundle exec $HOME/src/coach/coach_cli/exe/coach"
alias mydatadog="RBENV_VERSION=$(cat $HOME/src/datadog_tools/.ruby-version) BUNDLE_GEMFILE=$HOME/src/datadog_tools/Gemfile bundle exec $HOME/src/datadog_tools/exe/datadog_tools"
alias myterra="RBENV_VERSION=$(cat $HOME/src/shipyard/terraforeman/.ruby-version) BUNDLE_GEMFILE=$HOME/src/shipyard/terraforeman/Gemfile bundle exec $HOME/src/shipyard/terraforeman/exe/terraforeman"

alias prod-encrypt="pbpaste | ansible-vault encrypt_string --vault-password-file=~/ansible-vault/production.key"
alias prod-decrypt="pbpaste | sed 's/^[[:space:]]*//g' | ansible-vault decrypt --vault-password-file=~/ansible-vault/production.key /dev/stdin --output=-"
alias dev-encrypt="pbpaste | ansible-vault encrypt_string --vault-password-file=~/ansible-vault/development.key"
alias dev-decrypt="pbpaste | sed 's/^[[:space:]]*//g' | ansible-vault decrypt --vault-password-file=~/ansible-vault/development.key /dev/stdin --output=-"

alias wp-prod-encrypt="pbpaste | ansible-vault encrypt_string --vault-password-file=~/ansible-vault/brochure-production.key"
alias wp-prod-decrypt="pbpaste | sed 's/^[[:space:]]*//g' | ansible-vault decrypt --vault-password-file=~/ansible-vault/brochure-production.key /dev/stdin --output=-"
alias wp-dev-encrypt="pbpaste | ansible-vault encrypt_string --vault-password-file=~/ansible-vault/brochure-development.key"
alias wp-dev-decrypt="pbpaste | sed 's/^[[:space:]]*//g' | ansible-vault decrypt --vault-password-file=~/ansible-vault/brochure-development.key /dev/stdin --output=-"

alias prod-gm-encrypt="pbpaste | ansible-vault encrypt_string --vault-password-file=~/ansible-vault/prod-grandmaster.pem"
alias prod-gm-decrypt="pbpaste | sed 's/^[[:space:]]*//g' | ansible-vault decrypt --vault-password-file=~/ansible-vault/prod-grandmaster.pem /dev/stdin --output=-"
alias sopsorific="secret_editor"

find_replace () {
  dir=$1
  find_this=$2
  replace_with_this=$3
  rg -l $find_this $dir | xargs -n1 sed -i '' s/$find_this/$replace_with_this/g
}

ssh_to_instance () {
  bssh "$(aws ec2 describe-instances --instance-id "$1" | jq -r '.Reservations[0].Instances[0].PrivateIpAddress')"
}

gopen() {
  repo_name="$(basename `git rev-parse --show-toplevel`)"
  open "https://github.com/Betterment/${repo_name}"
}

openpr() {
  repo_name="$(basename `git rev-parse --show-toplevel`)"
  current_branch="$(git rev-parse --abbrev-ref HEAD)"
  open "https://github.com/Betterment/${repo_name}/pull/new/${current_branch}"
}

source "$HOME/.bootstrap/env.sh"

eval "$(rbenv init -)"

GOPATH=~/go
export TOMCAT_BASE="~/my/toolbox/tomcat-6.0.18"
export CATALINASH="$TOMCAT_BASE/bin/catalina.sh"
export GOPATH=${HOME}/go
export AWS_DEFAULT_REGION=us-east-1
export LUIGI_CONFIG_PATH=~/luigi.cfg
export PATH=/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
source ~/oh-my-git-aliases.sh
export PATH=$HOME/bin:$PATH

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/sophiarussell/src/goats/volume-snapshot-tagging/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/sophiarussell/src/goats/volume-snapshot-tagging/node_modules/tabtab/.completions/slss.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
