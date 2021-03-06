if_zsh=$(echo $1 | grep "zsh")
if_bash=$(echo $1 | grep "bash")

if [ "$if_zsh" != "" ]; then
    . $path_config_shell/core/zsh.sh
    # echo "Welcome to the zsh."
elif [ "$if_bash" != "" ]; then
    . $path_config_shell/core/bash.sh
    # echo "Welcome to the bash."
fi
