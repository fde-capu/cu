# ********************************************* #
#                                               #
#                      |:|||:||||:|:||:||::|||  #
#  Makefile            ::|:|:|::||:|:::||||||:  #
#                      ::|::|::::||::::::|:|||  #
#                                               #
#                                               #
#  C20200407124249 ::|:::                       #
#  U20200407124252 :|||::                       #
#                                               #
# ********************************************* #

LOCATION		=	/usr/local/bin

INSTALLSHELLS	=	cu_*

NAME			=	cu

all:			install run

install:		create_dir
	cp $(INSTALLSHELLS) $(LOCATION)
	cp cuzim $(LOCATION)
	chmod +x $(LOCATION)/cu*

create_dir:
	mkdir -p $(LOCATION)
	
run:
	@echo "Run the commands below as needed."
	#bash ./bu_vim
	#bash ./bu_byobu_nof1

vim:
	mkdir -p ~/.vim/after/plugin
	mkdir -p ~/.vim/colors
	mkdir -p ~/.vim/backups
	mkdir -p ~/.vim/swaps
	mkdir -p ~/.vim/undodir
	rm -f ~/.vimrc
	ln zim/.vimrc ~/
	[ -f ~/.vim/colors/_bg.vim ] || ln zim/.vim/colors/_bg.vim ~/.vim/colors
	[ -f ~/.vim/after/plugin/x_header.vim ] || ln zim/.vim/after/plugin/x_header.vim ~/.vim/after/plugin
