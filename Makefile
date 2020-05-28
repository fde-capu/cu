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

LOCATION	=	/usr/local/bin

INSTALLSHELLS	=	cu_*

NAME		=	cu

all:	install run

install:	create_dir
	cp $(INSTALLSHELLS) $(DESTDIR)$(LOCATION)
	cp cuzim $(DESTDIR)$(LOCATION)
	chmod +x $(DESTDIR)$(LOCATION)/cu*

create_dir:
	mkdir -p $(DESTDIR)$(LOCATION)
	
run:
	@echo "Run the commands below as needed."
	#bash ./bu_vim
	#bash ./bu_byobu_nof1
