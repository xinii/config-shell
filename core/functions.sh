print() {
    echo "--- $1"
}
goto() {
    if [ -e "$1" ]; then
	cd "$1"; l
    else
	print "$1 not exists."
    fi
}
gst() {
    git status
}
exec_py() {
    python3 $HOME/.config/shell/python_tools/$1.py $2
}
clean() {
    find . -name "$1" -exec rm -rfv {} \;
}
clean_xargs() {
    find . -name "$1" -print0 | xargs -0 rm -v # "print0"&"-0" is to treat space in file name.
}
clean_tex() {
    for tex_extension in aux bbl blg dvi fdb_latexmk fls toc log lof lot synctex.gz; do
	rm -fv *.$tex_extension
    done
}
gen_ssh_key() {
    ssh-keygen
    cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
    chmod 700 ~/.ssh
}
count() {
    file_n=`ll | grep "^-" | wc -l`
    file_a=`l | grep "^-" | wc -l`
    dir_n=`ll | grep "^d" | wc -l`
    dir_a=`l | grep "^d" | wc -l`
    file_with_sub=`find . -type f | wc -l`
    print "       |All|General|"
    print "Files  | "$file_a" |   "$file_n"   | files in all subfolders: "$file_with_sub
    print "Folder | "$[dir_a-2]" |   "$dir_n"   |"
}
dict() {
    grep $1 $HOME/.config/bash/utf8.dict -A 1 -wi --color
}
backup_xrea() {
    tar cvjpf `date +%Y-%m-%d`-backup.tar.bz2 --exclude=./public_html/.fast-cgi-bin --exclude=./public_html/log ./public_html
}
restore_xrea() {
    if [ $# -eq 0 ]; then
	tar xvpjf backup.tar.bz2
    elif [ $# -eq 3 ]; then
	tar xvpjf $1-$2-$3-backup.tar.bz2
    else
	print "input error."
    fi
}
install_emacs() {
    mkdir temp_packages_will_be_delete
    cd temp_packages_will_be_delete
    wget https://ftp.gnu.org/gnu/emacs/emacs-26.1.tar.xz
    tar xvf emacs-26.1.tar.xz
    rm -rfv emacs-26.1.tar.xz
    cd emacs-26.1
    read -p "--with-gif=? (yes or no)" choice_1
    read -p "--with-gnutls=? (yes or no)" choice_2
    ./configure --prefix=$HOME/.local --with-gif=$choice_1 --with-gnutls=$choice_2
    make
    make install
    cd ../..
    rm -rfv temp_packages_will_be_delete
}
install_git() {
    mkdir temp_packages_will_be_delete
    cd temp_packages_will_be_delete
    git clone https://github.com/git/git
    cd git
    make configure
    ./configure --prefix=$HOME/.local
    make
    make install
    cd ../..
    rm -rfv temp_packages_will_be_delete
}
install_emacs_git() {
    install_emacs_from_source
    install_git_from_source
}
it() {
    sudo iptables -t nat -A PREROUTING -p tcp --dport $1 -j REDIRECT --to-port $2
}
