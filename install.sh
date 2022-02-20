#!/bin/bash
V=.vim
Vi=.vimrc
RSS=.newsboat
FX=fcitx5
#read -p ".vim的位置(5秒后使用默认位置):" -t 5 ${}
function sf ()
{
    if [ $3 $2 ]
    then
        echo "$1 存在"
    else
        ln -s ~/.dotfiles/$1 $2
        echo "$1 链接成功"
    fi

}
sf "$Vi" "$HOME/$Vi" "-f"
sf "$V" "$HOME/$V" "-d"
sf "$RSS" "$HOME/$RSS" "-d"
sf "$FX" "$HOME/.local/share/$FX" "-d"
