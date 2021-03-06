. $path_config_shell/core/common.sh

PROMPT="%F{yellow}%?%f %F{magenta}%D %* %n@%f%F{green}%M%f
%F{cyan}%~ %# %f"
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle :compinstall filename '/Users/xin/.zshrc'
# autoload -Uz colors && colors
# autoload -Uz compinit && compinit

# BSD
# export LSCOLORS=exfxcxdxbxegedabagacad
# export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# alias ls="ls -GF"
# alias gls="gls --color"
# zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
