#!/bin/bash
V=.vim
Vi=.vimrc
RSS=.newsboat
FX=fcitx5
sub=pref.ini
#read -p ".vim的位置(5秒后使用默认位置):" -t 5 ${}
function sf ()
{
    if [ $3 $2 ]
    then
        echo "$1 存在"
    else
        if [ -w $2 ]
        then
            ln -s ~/.dotfiles/$1 $2
            echo "$1 链接成功"
        else
            echo "$1 不可写入 $2 请求sudo权限 "
            sudo ln -s ~/.dotfiles/$1 $2
            echo "$1 链接成功"
        fi
    fi

}
sf "$Vi" "$HOME/$Vi" "-f"
sf "$V" "$HOME/$V" "-d"
sf "$RSS" "$HOME/$RSS" "-d"
sf "$FX" "$HOME/.local/share/$FX" "-d"
sf "$sub" "/opt/subconverter/$sub" "-f"
