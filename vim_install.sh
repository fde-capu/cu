#!/bin/sh
# ********************************************* #
#                                               #
#                      ||||::::::||||:|||::|||  #
#  vim_install.sh      :|::::|:::||:::|:||::|:  #
#                      :||:||:|:|::|:|:||||||:  #
#                                               #
#                                               #
#  C20210427161045 |::|||                       #
#  U20210427161045 |::|||                       #
#                                               #
# ********************************************* #

mkdir -p ~/.vim/after/plugin
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undodir
mkdir -p ~/.vim/templates
rm -f ~/.vimrc
ln zim/.vimrc ~/
[ -f ~/.vim/colors/_bg.vim ] || ln zim/.vim/colors/_bg.vim ~/.vim/colors
[ -f ~/.vim/after/plugin/x_header.vim ] || ln zim/.vim/after/plugin/x_header.vim ~/.vim/after/plugin
[ -f ~/.vim/templates/coplien.cpp ] || ln zim/.vim/templates/coplien.cpp ~/.vim/templates/coplien.cpp
[ -f ~/.vim/templates/coplien.hpp ] || ln zim/.vim/templates/coplien.hpp ~/.vim/templates/coplien.hpp
[ -f ~/.vim/templates/Makefile ] || ln zim/.vim/templates/Makefile ~/.vim/templates/Makefile
