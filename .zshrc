########## zsh plugins ##########

# thefuck alias
eval "$(thefuck --alias)"

# zplug
source ~/.zplug/init.zsh
zplug "plugins/git",   from:oh-my-zsh
zplug "lib/completion",   from:oh-my-zsh
zplug 'lib/key-bindings', from:oh-my-zsh
zplug "lib/directories",  from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug agnoster/agnoster-zsh-theme, as:theme
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load


########## personal settings ##########

# dir function(mkdir && cd)
functions dir() {
        mkdir "$1"
        cd "$1"
}

# zshrc vimrc alias
alias zshrc='vi ~/.zshrc'
alias vimrc='vi ~/.vimrc'

# clear alias
alias c=clear
alias clr=clear

# ls alias
alias l='ls -alG'
alias ll='ls -G'
alias ls='ls -G'

# whereami alias
alias whereami=pwd

# let my zsh case insensetive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# git short commands
alias gs='git status'
alias gss='git status --short'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# go one directory up
alias ..='cd ..'

# language settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
