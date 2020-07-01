# GOPATH
set -x GOPATH $HOME/go
set -x GO111MODULE on

# Customize to your needs...
set -x PATH $PATH $HOME
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH $HOME/.anyenv/bin
set -x PATH $PATH $HOME/.anyenv/envs/*/bin
set -x PATH $PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin
set -x PATH $PATH /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
set -x PATH $PATH $HOME/google-cloud-sdk/bin
set -x PKG_CONFIG_PATH /usr/local/opt/openssl/lib/pkgconfig

# alias
## SSH
alias sshk='ssh-keygen -t rsa'
alias vsc='vi ~/.ssh/config'

## yarn
alias ya='yarn add'
alias yr='yarn remove'
alias yi='yarn install'
alias yd='yarn dev'

## git
alias gp='git pull'
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc-b='git checkout -b'
alias gc-m='git commit -m'
alias gcm='git checkout master'

## fish
alias sf='source ~/.config/fish/config.fish'
alias vf='vi ~/.config/fish/config.fish'
alias ep='echo $fish_user_paths'

alias c='clear'
alias p='ped'
alias ..='cd ..'
alias mv='mv -i'
alias cp='cp -i'
alias ls='ls -G'
alias l='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Install fisher
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

# peco settings
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# fzf settings
set -U FZF_LEGACY_KEYBINDINGS 0

# anynenv
status --is-interactive; and source (anyenv init -|psub)