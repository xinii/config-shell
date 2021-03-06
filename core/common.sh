path_work="$HOME/work"
path_config_shell="$HOME/.config/shell"

alias work="goto $path_work"
alias ..="goto .."
# cleaner
alias rmds="clean .DS_Store"
alias rmelc="clean *.elc"
# show size
alias d="du -csh"
# alias d*="du -csh * | sort -h"
alias da="du -csh .[!.]* * | sort -h"
# basic alias and functions
alias exe="exec $SHELL -l"
alias grep="grep --color=auto"
alias p="python"
alias e="emacs -nw"
alias ls="ls --color"
alias ll="ls -lh"
alias l="ll -a"
# python tools
alias combine_pdf_adf="exec_py combine_pdf_adf"
alias ftp_get_put="exec_py ftp_get_put"
alias generate_score="exec_py generate_score"
alias hosting_http="exec_py hosting_http"
alias show_path="exec_py show_path"
alias srt_player_utf8="exec_py srt_player_utf8"

. $path_config_shell/core/functions.sh

# settings of terminal
# export LANG=en_US.UTF-8
export LANG=ja_JP.UTF-8
