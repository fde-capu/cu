# ********************************************* #
#                                               #
#                      |:|||:||||:|:||:||::|||  #
#  Makefile            :|::::|:::||:::|:||::|:  #
#                      ::|::|::::||::::::|:|||  #
#                                               #
#                                               #
#  C20200407124249 ::|:::                       #
#  U20210427161144 |:|:||                       #
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
	./vim_install.sh
