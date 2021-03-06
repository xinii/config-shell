path_config_shell="$HOME/.config/shell"

# BSD
# export CLICOLOR="Yes"
# export LS_OPTIONS="--color=auto"
# export LSCOLORS="gxfxcxdxbxegedabagaced"

# GNU
export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

. $path_config_shell/core/link.sh $0
