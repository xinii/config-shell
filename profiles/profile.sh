if_zsh=$(echo $0 | grep "zsh")
if_bash=$(echo $0 | grep "bash")

if [ -f ~/.bashrc ] && [ "$if_bash" != "" ]; then
    . ~/.bashrc
fi

if [ -f ~/.zshrc ] && [ "$if_zsh" != "" ]; then
    . ~/.zshrc
fi

PATH=$HOME/.local/bin:$HOME/bin:$PATH
export PATH
