########## zsh plugins ##########

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

# language settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# brew path
eval "$(/opt/homebrew/bin/brew shellenv)"


alias ..='cd ..'

alias gs='git status'
alias gss='git status --short'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

alias francinette=/Users/moon/francinette/tester.sh

alias paco=/Users/moon/francinette/tester.sh

export PATH=/usr/local/opt/python/libexec/bin:$PATH

# gpg setting
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# PATH
# for postgresql
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
# for flutter SDK
export PATH="$PATH:/Users/moon/flutter/bin"
# for deta CLI
export PATH="/Users/moon/.detaspace/bin:$PATH"
# for homebrew
export PATH="/opt/homebrew/bin:$PATH:"

# settings for rbenv
export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH"
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

export RUBY_CFLAGS="-Wno-error=implicit-function-declaration"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1) --with-readline-dir=$(brew --prefix readline)"


if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
alias norm='norminette -R CheckForbiddenSourceHeader'
alias 7z='~/bin/7zz'
alias python='python3'
alias a='./a.out'

export AGNOSTER_PROMPT_SEGMENTS[2]=
