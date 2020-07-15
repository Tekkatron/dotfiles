# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# $ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
export DISABLE_MAGIC_FUNCTIONS=true

export ZSH="/home/$USER/.oh-my-zsh"
#export TERM="xterm-256-color"



# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="cloud"
plugins=(
  git
  gitfast
  zsh-syntax-highlighting
  zsh-autosuggestions
  ssh-agent
)

zstyle :omz:plugins:ssh-agent identities github gitlabkey gonkarSappturn id_rsa nutresa nicolas jenkins-dev-pro

source $ZSH/oh-my-zsh.sh
# source ~/.bash_profile

# bindkey -v
# bindkey '^R' history-incremental-search-backward



POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=">$"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs dir )
# POWERLEVEL9K_DISABLE_RPROMPT=true
#   Prompt Formatting
POWERLEVEL9K_CONTEXT_TEMPLATE=''
POWERLEVEL9K_HOME_ICON='🏠'
POWERLEVEL9K_HOME_SUB_ICON='🗁 '
POWERLEVEL9K_FOLDER_ICON='🗁'
POWERLEVEL9K_FOLDER_BACKGROUND='red'
POWERLEVEL9K_FOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_SHOW_WRITABLE='true``'	
# Advanced `vcs` color customization
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='wite'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='blue'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#ffffff'
# Advanced `vi_mode` color customization
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'
POWERLEVEL9K_COLOR_SCHEME='dark'

 #  ALIASES
#alias ssh="/usr/bin/ssh-ident"

#SSH Agent Start
alias start-ssh-agent='eval "$(ssh-agent -s)"'
#Git Alias
alias dot-init='git init --bare $HOME/.tekkaconf'
alias dot='/usr/bin/git --git-dir=$HOME/.tekkaconf/ --work-tree=$HOME'
alias dot-untracked='dot config --local status.showUntrackedFiles no'
alias reloadzshrc="source ~/.zshrc"
alias reloadxrdb="xrdb -load ~/.Xresources"
alias serial="sudo dmidecode -s system-serial-number"
alias sistema='sudo dmidecode|grep "System Information" -A 8'
#   Autocomplete Especial Dirs .. and ...
zstyle ':completion:*' special-dirs true
zstyle ':completion:*:*:docker-*:*' option-stacking yes
#   Setting the convenient slash trail when autocompleting
setopt autoparamslash
#   Browser-Sync on the current directory
alias watcher='browser-sync start --server --files="**/*"'
#   Xrandr Screen Aliases 
# Userfull Shortcuts
alias hh="cd ~/"
alias ll="ls -alhF"
alias lls="ls -alhSF"
# Python3 Shortcut
alias p3='python3'
#OVSHD@GOD
alias ssh-god-ovshd="ssh soporte@helpdesk.godconsulting.co -p 10000"
#OVSDOCKER@VEPASA
alias ssh-vepasa-ovsdocker="ssh soporte@190.145.251.146 -p 10000"
#ODOO
alias ssh-god-sagitario="ssh odoo@40.117.115.103"
alias ssh-god-lina="ssh odoo@erp.godconsulting.co"
#ODOO ROR
alias ror-odoo="ssh administrador@10.10.11.18"        
#ODOO GOD en GONKAR
alias ssh-gonkar-odoo="ssh debian@142.44.201.168"
#Udemy Downloader
alias udemy='python ~/clones/udemy-dl/udemy-dl.py'
#Sappturn Centos @ Gonkar
alias sappturn-ssh='ssh cloud@sappturn.com -p 22'
#Install Oh-My-ZSH
#alias install-oh-my-zsh="sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)""
#Install PowerLevel9k theme for Zsh
alias install-powerlevel9k="git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k"
alias install-powerlevel10k="git clone https://github.com/romkatv/powerlevel10k.git  ~/.oh-my-zsh/custom/themes/powerlevel10k"
# ZSH Goodies
alias install-zsh-autosuggestions="git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
alias install-zsh-highlithing="git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" 
#Docker Compose
# alias 
alias install-docker-compose="sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose"
alias permissions-docker-compose="sudo chmod +x /usr/local/bin/docker-compose"
# PWD Web Server
alias http-server='docker run -it --rm -p 5000:8080 -v $(pwd):/public danjellz/http-server'
alias http-server2='docker run -it --rm -p 8082:8080 -v $(pwd):/public danjellz/http-server'
alias http-server3='docker run -it --rm -p 8083:8080 -v $(pwd):/public danjellz/http-server'
#Python 3 Virtual Enviroments
#source /usr/bin/virtualenvwrapper.sh
#export PATH=$PATH:/home/tekkatron/.local/bin
#MY SSH Tunels
alias supertunel-58000="ssh -f -D 58000 -C -q -N cloud@142.44.201.163 -p 22"
alias supertunel-59000="ssh -f -D 59000 -C -q -N soporte@190.145.251.146 -p 10000"
# Docker Autocompletion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# VIM
#alias vim="nvim"

# Espacio Libre
alias dupwd='du -hd 1 $(pwd)| sort -h'
alias top='vtop --theme=wizard'
# Enabled true color support for terminals
export NVIM_TUI_ENABLE_TRUE_COLOR=1
alias ssh='TERM=xterm-256color ssh'
# Youtube Download with best video/audio quality
alias ytl=youtube-dl -f '(bestvideo+bestaudio/best)[protocol^=http]' 
alias dcpud='docker-compose up -d'
alias mkube="microk8s.kubectl"
alias nn="geany"
alias kctl-name="kubectl -n"

alias udl="python3 $HOME/WorkFolder/PersonalStuff/scripts/udemy-dl/udemy-dl.py -o '$(pwd)'"
alias git-tns="git config --local user.name 'Andres Chavez' && git config --local user.email 'andres.chavez@techandsolve.com'"
alias git-tekka="git config --local user.name 'Tekkatron' && git config --local user.email 'tekkatron@gmail.com'"
alias mdserver="docker run --name mdserver -d --rm -it -v '$(pwd)':/docs -p 3000:3000 dannyben/madness"
alias mm='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'
alias k='kubectl'
alias ks='kubeselect'
alias kk='microk8s.kubectl'
alias myip='host myip.opendns.com resolver1.opendns.com'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tekka/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tekka/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tekka/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tekka/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
