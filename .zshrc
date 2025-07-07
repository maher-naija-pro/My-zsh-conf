
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.


if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#change cusror form
echo '\e[5 q'




HISTSIZE=500000000
SAVEHIST=500000000
setopt HIST_IGNORE_ALL_DUPS EXTENDED_HISTORY APPEND_HISTORY

ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(buffer-empty bracketed-paste accept-line push-line-or-edit)
ZSH_AUTOSUGGEST_STRATEGY=(history completion )
ZSH_AUTOSUGGEST_USE_ASYNC=true
#ZSH_AUTOSUGGEST_USE_CURSOR=true
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline" 
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bold"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( last-working-dir vi-mode history jsontools dirhistory web-search sudo history-substring-search git-prompt  zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
PROMPT="%F{red}%M%F{bleu}@%~$(git_super_status)%#"


alias d="docker" 
alias cvenv="python3 -m venv venv" 
alias venvactivate="source venv/bin/activate"
alias d="docker"   
alias dps="docker ps"   
alias dr="dcd && dcud" 
alias dcu="docker-compose up"   
alias dcud="docker-compose up -d" 
alias dcd="docker-compose down"
alias dl="docker logs"
alias ds="docker stop "  

alias gpt="codex"  

alias gpt="codex"  
alias vss="vi /mnt/c/Users/maher/AppData/Roaming/Cursor/User/settings.json" 
alias gmi="go mod init"
alias web="cd /mnt/d/go_web"
alias gr="air"

alias rel="source ~/.zshrc"
alias goog="google"

alias tfl="terraform login"
alias tft="terraform taint"
alias tfa="terraform apply -auto-approve"
alias tp="terraform plan"
alias tf="terraform"

grepi() {
        grepr --include \*.tf $1 .
}


alias tfgrep="grepi"
alias tfdata='awsdata && cp ~/.terraform.d/credentials.tfrc.json_data ~/.terraform.d/credentials.tfrc.json'
alias tfdev='awsdev && cp ~/.terraform.d/credentials.tfrc.json_dev ~/.terraform.d/credentials.tfrc.json'
alias tfprod='awsdev && cp ~/.terraform.d/credentials.tfrc.json_dev ~/.terraform.d/credentials.tfrc.json'

alias h="helm"

alias hl="helm list --all-namespaces --all"
alias hu="helm uninstall"
alias civ="circleci config validate"

alias l="ls -la --color=auto"
alias diff='colordiff'

alias hosts='sudo vi /etc/hosts'
alias netstat='netstat -laputen'
alias nets='netstat -laputen'
alias root='sudo -i'
alias su='sudo -i'
alias df='df -H'
alias du='du -ch'
alias untar='tar -zxvf '
alias wget='wget -c '
alias mkdir='mkdir -pv '
alias pip='pip3'
alias py='python3.12'
alias python='python3.12'
alias ps='ps axuwww'
alias netstats='netstat -laputen'
alias ns='netstat -laputen'
alias kill='kill -9'

alias tele="cd ~/downloads"
alias .ssh="cd ~/.ssh"
alias lssh="ls ~/.ssh"
alias tel="telnet"

alias .="cd .."
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

forvii () {
  for file in $(cat $1)
  do
    vi  $file
  done
}

alias forvi='forvii'


oldf() {
  if [[ $1 != *_old ]]; then
     mv  $1 $1_old
  else
     name=$(echo $1| sed 's/_old//')
     mv $1 $name
  fi
}

alias old='oldf'


backf() {
  if [[ $1 != *_back ]]; then
     cp  $1 $1_back
  else
     name=$(echo $1| sed 's/_back//')
     mv $1 $name
  fi
}

alias back='backf'
## integrate branch 1 to branch 2
gitint() {
        gch $1 && gaa && gf && gch $2 && gm $1 && gf && gch $1

}


alias gi='gitint'

gitall() {
    git commit -m "update"
    git push
}
 
gitallammend() {
    git commit --amend --no-edit 
    git push --force
}

alias gf='gitall'

alias gfa='gitallammend'
alias gdelsrvbr='git push origin --delete'
alias gk="gitk -all -reflog"
alias gd='git diff'
alias gba='git branch -v -a'
alias gl="git log --reflog --color --all --graph -p"
alias gaf="gaa && gf"

## stash
alias gs="git stash"
alias gsp="git stash pop"

## checkouts
alias gc="git checkout"
alias gcdev="git checkout integration"
alias gcdata="git checkout data"
alias gcint="git checkout integration"
alias gcprod="git checkout prod"
alias gchdev="git checkout dev"
alias gchdata="git checkout data"
alias gchprod="git checkout prod"
alias gchint="git checkout integration"
alias gdev="git checkout dev"
alias gdata="git checkout data"
alias gprod="git checkout prod"

# merges
 gitm() {
     git merge $1 -m 'merge'
}
alias gm="gitm"

#feature branch
 gfea() {
     gchint && git branch feature/maher/$1 && gch feature/maher/$1
}
alias gfe="gfea"


alias gmdev="git merge dev"
alias gmdata="git merge data"
alias gmprod="git merge prod"
alias gmprd="git merge prod"

# git branch
alias gbr='git branch'
alias gitbr='git branch'
gitb() {
     git branch $1 && git checkout $1
}

alias gb='gitb'

# general git
alias g="git"
alias gst="git stash"
alias gch="git checkout"
alias gpsh='git push'
alias gpush='git push'
alias gpll='git pull'
alias gpull='git pull'
alias gaa="git add -A"
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gclone="git clone"
alias gcl="git clone"

#######################################
# git hub 
#######################################
# sourse branch
# dest branch
# title
 
alias vs="ovs"

#openssl
osslreadcert() {
     
    openssl x509 -text -noout -in $1        
}
alias osslrc="osslreadcert"

ossldatecert() {

     openssl x509 -text -noout -in $1 | sed -n 's/ *Not After : *//p'
}
alias ossldate="ossldatecert"

alias ossl="openssl"

############################################""
alias recipes="cd recipes"
alias recipe="cd recipes"
alias download='cd ~/Downloads'
alias bureau='cd ~/Desktop'
alias desktop='cd ~/Desktop'

alias data="awsdata && tfdata && cd  ~/aws-data/recipes"
alias prd="awsprod && tfprod &&  cd  ~/aws-prod/recipes"
alias prod="awsprod && tfprod && cd  ~/aws-prod/recipes"
alias dev="awsdev && tfdev && cd  ~/aws-dev/recipes"



gitpull() {
      git  -C $1 pull  & 
}
alias gpull='gitpull'

alias pzsh="gpull ~/My-zsh-conf"
alias pvim="gpull ~/My-VimRC"
alias ptmux="gpull ~/My_tmux_conf"
alias phist="gpull ~/My-zsh-history"
alias pgit="gpull ~/My-Git-Config"
alias pssh="gpull ~/My_ssh"
alias paws="gpull ~/My-aws-cli"
alias pac="gpull ~/All-my-configs"

alias pall="pac && pgit && pzsh && pvim && ptmux"
alias padmin="pssh && paws && phist"



alias bzsh="gback ~/My-zsh-conf"
alias bvim="gback ~/My-VimRC"
alias btmux="gback ~/My_tmux_conf"
alias bhist="gback ~/My-zsh-history"
alias bgit="gback ~/My-Git-Config"
alias bssh="gback ~/My_ssh"
alias baws="gback ~/My-aws-cli"
alias bac="gback ~/All-my-configs"


alias ball="bac  && bgit && bzsh && bvim && btmux "
alias badmin="bhist && bssh && baws"


alias bbrew="cd ~/backup_brew_install && gback ~/backup_brew_install"
alias biterm="cd ~/backup_iterm_config && gback ~/backup_iterm_config"


alias k="kubectl"
alias e="exit"
alias s="ssh"
alias t="tmux"

#kuberantes
alias kdns="kubectl describe ns"
alias kdpod="kubectl describe pod "
alias kdjob="kubectl describe job "
alias kding="kubectl describe ingress"
alias kdser="kubectl describe service"
alias kddep="kubectl describe deployment  "
alias kdnode="kubectl describe node"
alias kdrs="kubectl describe rs"
alias kdss="kubectl describe  statefulset"
alias kd="kubectl describe  "
alias ktpod="k top pod --all-namespaces"
alias ktnode="k top node"

kex() {
        kubectl exec --stdin --tty -n $1 $2   -- /bin/sh
}
alias kexec="kex"


kenv() {
  kubectl exec -it -n $1 $2 -- env
}

alias kgenv="kenv"

alias ktop="k top pod --all-namespaces"

alias kg="kubectl get"
alias kgss="kubectl get statefulset --all-namespaces"
alias kgns="kubectl get ns --all-namespaces"
alias kgjob="kubectl get job  --all-namespaces"
alias kging="kubectl get ingress  --all-namespaces"
alias kgser="kubectl get service  --all-namespaces"
alias kgdep="kubectl get deployment  --all-namespaces"
alias kgev="kubectl get events  --all-namespaces"
alias kgnode="kubectl get nodes"
alias kgrs="kubectl get rs --all-namespaces"
alias kl="kubectl logs -f -n "
kip() {
 kubectl describe pod -n $1 $2 | grep IP | sed -E 's/IP:[[:space:]]+//'
}

alias kgip='kip'

alias kdebug="kubectl run -i --rm --tty debug --image=busybox --pod-running-timeout=10m0s --attach --restart=Never --namespace kube-system -- sh"
alias kcurl="kubectl run curlpod --image=curlimages/curl -i --tty --pod-running-timeout=10m0s --attach --restart=Never --namespace kube-system -- sh"



alias rs='kubectl get rs   --all-namespaces'
alias srv='kubectl get services   --all-namespaces'
alias igr='kubectl get ingress   --all-namespaces'
alias wpod="watch -n1 'kubectl get pods   --all-namespaces'"
alias pods="watch -n1 'kubectl get pods   --all-namespaces'"
alias pod="kubectl get pods   --all-namespaces"

alias sit="s3cmd  sync --delete-removed   --recursive  /Users/maher.naija/vpc-it-2.0-salt/*  s3://it-2-salt"
alias appd="s3cmd  sync --delete-removed   --recursive  /Users/maher.naija/vpc-it-2.0-ansible/*  s3://it-2-ansible-pprd"
alias aprd="s3cmd  sync --delete-removed   --recursive  /Users/maher.naija/vpc-it-2.0-ansible/*  s3://it-2-ansible-prd"
alias clear="clear && reset"
alias reset="clear && reset"
alias r="clear && reset"
alias res="clear && reset"
alias clear="clear && reset"

# aws config 
alias awsdev="sed -i  -e   's/^\([^#].*\)/#&/' ~/.aws/credentials &&  sed -i  -e   '2,4s/^#//' ~/.aws/credentials"
alias awsprod="sed -i  -e   's/^\([^#].*\)/#&/' ~/.aws/credentials &&  sed -i  -e   '2,4s/^#//' ~/.aws/credentials"
alias awsdata="sed -i  -e   's/^\([^#].*\)/#&/' ~/.aws/credentials &&  sed -i  -e   '12,14s/^#//' ~/.aws/credentials"

alias ci="vi .circleci/config.yml"
alias vimrc="vi ~/.vimrc"
alias vimc="vi ~/.vimrc"
alias vic="vi ~/.vimrc"
alias vc="vi ~/.vimrc"
alias zsh="vi ~/.zshrc"
alias snipc="cd ~/.vim/plugged/vim-snippets/UltiSnips/"
alias bsnip="cd ~/.vim/plugged/vim-snippets/UltiSnips/"

alias allc="vi ~/All-my-configs/conf.sh"
alias sshc="vi ~/.ssh/config"
alias awsc="vi ~/.aws/credentials"
alias tmuxc="vi ~/.tmux.conf"
alias tc="vi ~/.tmux.conf"

alias vic="vi ~/.vimrc"
alias gitc="vi ~/.gitconfig"
alias tzshc="vi ~/.p10k.zsh"

alias monip="curl -s ifconfig.me"
alias ouip="whois $(monip) | grep country"
alias cpr="cp -r "
alias diff="colordiff"
grr() {
  grep -r  $1  .

}
alias gback='gitback'
alias bi='brew install'
alias grepr='grr'
alias ls="ls -a"
alias ifc="ifconfig"
alias pingg="ping 8.8.8.8"
alias sshr="ssh-keygen -R"
alias backup_mac="export MACPREFS_BACKUP_DIR=~/backup_mac_pref && sudo macprefs backup"
alias vi="vim -cstartinsert"
alias v="vim -cstartinsert"
rep() {
    for i in $1* ; do sed -i '' -e   's/'$2'/'$3'/g' $i  && echo $i; done
}

alias repall='rep'


# kuma install
alias kuma_install="curl -L https://kuma.io/installer.sh | VERSION=2.4.0 sh -"
#usage : sedall mah\*  s/leila/chems/g
seda() {
 find . -name $1  | xargs  sed  -i "" $2
}

alias sedall='seda'


kdpod_fn() {
 kdpod $1 -n $(pod | grep $1  |awk '{print $1}')
}

alias kdp='kdpod_fn'

klp_fn() {
 kl $1 -n $(pod | grep $1  |awk '{print $1}')
}

alias klp='klp_fn'


upl_fnc() {
aws lambda update-function-code\
    --function-name $1\
    --publish \
    --zip-file fileb://$2
}
alias ul='upl_fnc'





autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
compdef __start_kubectl k



alias yuminstall='sudo yum install'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/maher.naija/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/maher.naija/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/maher.naija/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/maher.naija/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pullall conf 
#pall 
#echo "pull all git conf repo"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/maher/google-cloud-sdk/path.zsh.inc' ]; then . '/home/maher/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/maher/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/maher/google-cloud-sdk/completion.zsh.inc'; fi
